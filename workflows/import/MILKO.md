# import — ISO Standard Term Import Scripts

This directory contains Python scripts that extract data from external vendor repositories and produce JSON term files for the metadata-store dictionary.

---

## Purpose

Each script reads a specific ISO standard's source data (JSON + PO translation files) from `vendor/`, transforms it into the dictionary's term and edge document format, and writes the results to `data/ISO/<standard>/`.

No database access is involved — outputs are plain JSON files intended to be loaded into ArangoDB.

---

## Directory Layout

```
workflows/import/
  utils.py            Shared utilities: PO parsing, term building, edge building, JSON writing
  import_639.py       ISO 639 — Language codes (parts 1, 3, 5)
  import_3166_1.py    ISO 3166-1 — Country codes
  import_3166_2.py    ISO 3166-2 — Country subdivision codes
  import_3166_3.py    ISO 3166-3 — Former country codes
  import_4217.py      ISO 4217 — Currency codes
  import_15924.py     ISO 15924 — Script codes
```

### Vendor repositories (not tracked in git)

```
vendor/
  iso-codes/    Debian iso-codes — primary source (JSON + PO translations)
  countries/    mledoze/countries — supplementary country data and flag emoji
  flag-icons/   lipis/flag-icons — SVG flag files (path reference only)
```

---

## How to Run

Each script is standalone. Run from any directory inside the repository:

```bash
python workflows/import/import_639.py
python workflows/import/import_3166_2.py
# etc.
```

Recommended import order (later scripts may depend on earlier outputs):

1. `import_15924.py` — no dependencies
2. `import_4217.py` — no dependencies
3. `import_639.py` — ISO 639-3 terms are used as language keys everywhere else
4. `import_3166_1.py` — current countries
5. `import_3166_3.py` — former countries
6. `import_3166_2.py` — subdivisions (references country terms from 3166-1)

---

## `utils.py` — Shared Utilities

All scripts import from `utils.py`. It provides:

### Path constants

```python
REPO_ROOT   # absolute path to the repository root (found via __file__)
VENDOR      # vendor/
DATA_ISO    # data/ISO/
ISO_CODES   # vendor/iso-codes/
COUNTRIES   # vendor/countries/
FLAG_ICONS  # vendor/flag-icons/
```

### Language mapping

**`load_lang_map()`** reads `vendor/iso-codes/data/iso_639-3.json` and builds a `{alpha_2: "ISO_639_3_xxx"}` dict. This is used to map `.po` filename language codes (like `fr`, `de`) to the dictionary's language GID format (`ISO_639_3_fra`, `ISO_639_3_deu`).

**`po_lang_to_gid(lang_code, lang_map)`** handles variants: `zh_CN` → `zh` → `ISO_639_3_zho`, `sr@latin` → `sr` → `ISO_639_3_srp`.

### PO file parsing

**`parse_po(path)`** parses a gettext `.po` file into `{msgid: msgstr}`. Only non-empty translations are kept. The file header (empty msgid) is discarded.

**`load_translations(po_dir, lang_map)`** loads all `.po` files from a directory and returns `{lang_gid: {msgid: msgstr}}`. The first file that maps to a given language GID wins (avoids zh_CN / zh_TW collision).

### Title building

**`get_titles(eng_name, translations, common_name=None)`** builds the `_info._title` multilingual dict for a term:
- English title is always `{"ISO_639_3_eng": common_name or eng_name}`
- For each loaded translation language, looks up `eng_name` (and `common_name` as fallback) in that language's translation table
- Returns `{lang_gid: translated_name}`

### Term building

**`build_term(nid, lid, gid, aid, titles, prop=None, name=None, emoji=None)`**

Produces a standard term document:
```json
{
    "_code": {
        "_nid": "...", "_lid": "...", "_gid": "...", "_aid": [...],
        "_name": "...",    // if name provided
        "_emoji": "..."    // if emoji provided
    },
    "_info": {"_title": {... multilingual ...}},
    "_prop": {...}         // if prop provided
}
```

`_aid` is deduplicated while preserving order (first occurrence wins).

### Edge building

**`build_enum_edge(from_gid, to_gid)`**  
Shorthand for `_predicate_enum-of` edges where `_path` equals `[to_gid]`:
```json
{
    "_from": "terms/ISO_3166_1_ITA",
    "_predicate": "_predicate_enum-of",
    "_to":   "terms/ISO_3166_1",
    "_path": ["terms/ISO_3166_1"],
    "_path_data": {}
}
```

**`build_edge(from_gid, predicate, to_gid, path_gids=None)`**  
Generic edge builder for arbitrary predicates and paths. `path_gids` defaults to `[to_gid]`.
Used for: section-of edges, bridge-of edges, and ISO 3166-2 type-as-predicate edges.

### Output

**`write_json(path, data)`** writes a JSON array with 4-space indentation and a trailing newline. Creates parent directories as needed. Prints a confirmation line with the relative path and entry count.

---

## ISO 639 (`import_639.py`) — Three-Part Structure

### What it produces

| File | Content |
|------|---------|
| `iso_639_1.json` | 184 alias terms (2-letter codes) |
| `iso_639_1.enum.json` | 369 edges for the ISO_639_1 graph |
| `iso_639_3.json` | 7923 comprehensive language terms |
| `iso_639_3.enum.json` | 7923 section edges for the ISO_639_3 graph |
| `iso_639_5.json` | 115 language family terms |
| `iso_639_5.enum.json` | 115 enum-of edges for the ISO_639_5 graph |

Plus the separately maintained `ISO_639.schema.json` (not generated by this script — contains the section node and alias graph structure edges).

### ISO 639-3 section hierarchy

The 7923 language terms are organised within the ISO_639_3 graph using section nodes (scope and type terms). Each language's enum-of edge points to its section node, not directly to the root. The graph root (`ISO_639_3`) is set as the `_path`:

```
ISO_639_3
  ├── ISO_639_scope_I  (section)
  │     ├── ISO_639_type_L  (section) — Living languages ~5700
  │     ├── ISO_639_type_A  (section) — Ancient
  │     ├── ISO_639_type_C  (section) — Constructed
  │     ├── ISO_639_type_E  (section) — Extinct
  │     ├── ISO_639_type_H  (section) — Historical
  │     └── (Special type S — no sub-section, attach to scope_I)
  ├── ISO_639_scope_M  (section) — Macrolanguages
  └── ISO_639_scope_S  (section) — Special codes
```

The `_section_gid(scope, lang_type)` function maps each `(scope, type)` pair to the correct section GID. The section-of edges between these nodes are in `ISO_639.schema.json`, not generated here.

### ISO 639-1 as alias terms

Every ISO 639-1 language (2-letter code, e.g. `en`) is an alias of its ISO 639-3 counterpart (`eng`). Alias terms carry only a `_code` section — no `_info`, no `_prop`.

For each alias, three edges are generated in `iso_639_1.enum.json`:

| Edge | Meaning |
|------|---------|
| `ISO_639_3_eng  enum-of    ISO_639_1_en`   | `eng` is the real element reachable through the alias |
| `ISO_639_1_en   bridge-of  ISO_639_1`       | `en` is a bridge node (alias), skipped during traversal |

Plus one global edge per run (placed first in the file):

| Edge | Meaning |
|------|---------|
| *(none — removed)* | ISO 639-3 and ISO 639-1 are independent enumerations |

---

## ISO 3166-1 (`import_3166_1.py`)

**_lid** = alpha-3 code (e.g. `ITA`). Alpha-2 and numeric go in `_aid`.  
**Augmented** by mledoze/countries: additional translations keyed by ISO 639-1 alpha_2 code; flag emoji.  
**_prop**: `ISO_3166_alpha2`, `ISO_3166_alpha3`, `ISO_3166_numeric`, optionally `ISO_3166_official-name`, `ISO_3166_common-name`.

---

## ISO 3166-3 (`import_3166_3.py`)

**_lid** = alpha-4 code (e.g. `YUCS`, `CSHH`). Former countries only.  
**_prop**: alpha2, alpha3, alpha4, optionally numeric and `ISO_3166_3_withdrawal`.

---

## ISO 3166-2 (`import_3166_2.py`) — Two Graphs

The most complex import. Produces five output files.

### Subdivision type terms (`iso_3166_2_type.*`)

109 unique type names (e.g. "Province", "Administrative region") collected from the source data and turned into terms in the `ISO_3166_2_type` namespace. `_lid` is a slug of the English name (lowercase, spaces → hyphens). These terms serve a dual role: they are enum elements of `ISO_3166_2_type` AND they are used as edge predicates in Graph 1.

### Subdivision terms (`iso_3166_2.json`)

5046 terms. Flat namespace `ISO_3166_2`, `_lid` = full code (e.g. `IT-65`, `AD-02`).

- **`_prop`**: `ISO_3166_alpha2` (country alpha-2), `ISO_3166_alpha3` (country alpha-3)
- **`_domn`**: `{"ISO_3166_2_type": "ISO_3166_2_type_region"}` — the subdivision type as a categorical classifier

### Graph 1 — ISO_3166 root, administrative hierarchy (`iso_3166_2.hier.json`)

5046 edges. Predicate = subdivision type GID (dynamic predicate). `_path: ["terms/ISO_3166"]`.

```
ISO_3166_2_IT-65  →(ISO_3166_2_type_region)→  ISO_3166_1_ITA
ISO_3166_2_AZ-BAB →(ISO_3166_2_type_rayon)→   ISO_3166_2_AZ-NX   ← parent subdivision
```

Top-level subdivisions point to their country (ISO_3166_1 term). Sub-subdivisions (those with a `parent` field in the source) point to their parent subdivision.

### Graph 2 — ISO_3166_2 root, enumeration (`iso_3166_2.enum.json`)

5246 edges = 5046 subdivision enum-of edges + 200 country section-of edges.

Countries are section nodes within the ISO_3166_2 graph. The same parent-child hierarchy as Graph 1 is preserved, but using `_predicate_enum-of` instead of the type predicate.

```
ISO_3166_1_ITA   section-of  ISO_3166_2           ← country is section header
ISO_3166_2_IT-65  enum-of   ISO_3166_1_ITA         ← top-level attaches to country
ISO_3166_2_AZ-BAB enum-of   ISO_3166_2_AZ-NX       ← sub-level attaches to parent
```

---

## ISO 4217 (`import_4217.py`)

Currency codes. One term per active currency. `_lid` = alpha-3 code (e.g. `EUR`, `USD`). Numeric code in `_aid` and `_prop`.

---

## ISO 15924 (`import_15924.py`)

Script codes. One term per script. `_lid` = 4-letter code (e.g. `Latn`, `Arab`). Numeric code in `_aid` and `_prop`.

---

## `ISO_639.schema.json` — Structural Edge File

Not generated by any script — manually maintained. Contains the structural edges that define the ISO 639 graph topology:

- **Enum-of edges**: scope_I/M/S as members of `ISO_639_scope`; type_A/C/E/H/L/S as members of `ISO_639_type`
- **Section-of edges**: scope_I/M/S as sections of `ISO_639_3`; type_A/C/E/H/L as sections of `ISO_639_scope_I`

All `_from`, `_to`, `_path` values use document handles (`terms/ISO_639_*` format).

---

## Design Decisions

**Why separate term files and edge files?**  
Terms and edges go into different ArangoDB collections. Keeping them in separate files makes the import loader simpler — load one array into the terms collection, load another into the edges collection.

**Why Python?**  
PO file parsing and JSON manipulation are more concise in Python than in Swift. The import scripts run once (or infrequently) and have no real-time performance requirement.

**Why dynamic predicates for ISO 3166-2 Graph 1?**  
Each subdivision type (Province, Canton, Rayon…) carries distinct administrative meaning. Using the type GID as the predicate allows graph queries to filter by subdivision type natively — e.g. "find all Regions of Italy" becomes a single edge-type filter rather than a property lookup.

**Why are ISO 639-1 terms alias-only?**  
Every ISO 639-1 language also exists in ISO 639-3. Keeping duplicate full terms would mean maintaining content in two places. The alias pattern makes ISO 639-3 the single source of truth; ISO 639-1 is a navigation convenience that points into the same canonical terms.
