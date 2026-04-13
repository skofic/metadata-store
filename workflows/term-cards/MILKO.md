# term-cards — Dictionary Term Card Generator

A Swift command-line tool that reads dictionary term JSON files and generates one Markdown documentation card per term.

---

## Purpose

Every term in `data/core/` that has an `_info` section gets a human-readable Markdown file in `docs/`. Cards are the primary way to browse and understand the dictionary outside a database environment. The tool is incremental: unchanged cards are left untouched; stale cards (whose source term was deleted) are removed.

---

## How to Run

```bash
# From the term-cards package directory
cd workflows/term-cards
swift run

# From anywhere in the repository
swift run --package-path workflows/term-cards
```

Re-run after any change to `data/core/*.json`. Output goes to `docs/` (configurable via `dictionary.config.json`).

---

## Source Structure

The entire tool lives in a single file:

```
term-cards/
  Package.swift               Swift package manifest
  Sources/TermCards/
    main.swift                All logic — ~760 lines, no external dependencies
```

### Package.swift

Declares one executable target `TermCards` pointing at `Sources/TermCards`. Targets macOS 13+, Swift 5.9+.

---

## Architecture and Code Flow

### 1. Entry point — `run()`

Located at the bottom of `main.swift`:

1. Detects the repository root by walking up from the current directory until `.git` is found.
2. Reads `dictionary.config.json` for path overrides (`paths.core` → `data/core`, `paths.terms` → `docs`).
3. **Phase 1**: Loads all `*.json` files from `data/core/` into a `termsByGid` dictionary.
4. Builds a `TitleRegistry` (`[gid → English title]`) used for generating hyperlinks.
5. **Phase 2**: For each term with an `_info` section, renders a Markdown card and writes it if the content has changed.
6. **Phase 3**: Removes any card in `docs/` whose source term no longer exists.

### 2. Title registry — `buildTitleRegistry(from:) → TitleRegistry`

A `[String: String]` map from `_gid` to English title (`ISO_639_3_eng`). Used throughout rendering to convert raw GIDs into `[Title](gid.md)` Markdown links. When a GID has no title in the registry (e.g. a term with no `_info`), it falls back to `` `gid` `` (code span) or `[gid](gid.md)` (always-linked, for enum root references).

### 3. Card rendering — `renderCard(gid:info:term:registry:)`

Assembles the full Markdown string for one term. Structure:

```markdown
# Title
<role tags if _domn._term_role is present>
<p style="..."><code>_gid</code></p>

> Definition (blockquote)

---

## _code
(identifier table + JSON disclosure)

---

## _info
(labelled properties)

---

## _data          ← only if term has _data
(shape display + JSON disclosure)
```

### 4. Section renderers

Each top-level section has a dedicated renderer:

**`renderCodeSection(_:registry:)`**  
Produces a Markdown table with `_nid`, `_lid`, `_gid`, `_aid`. `_nid` is linked to its term when present. Followed by a collapsible JSON block.

**`renderInfoSection(_:registry:)`**  
Renders `_info` properties in a fixed canonical order: `_title`, `_definition`, `_description`, `_examples`, `_notes`, `_url`, `_citation`, `_provider`, `_methods`, `_usage`, then any unknown keys alphabetically.

- **Inline properties** (`_title`, `_definition`): `**Label:** value` on one line.
- **List properties** (`_url`, `_citation`, `_provider`): rendered as bullet lists.
- **Block properties** (all others): label on one line, value as a paragraph below.

The JSON disclosure in `_info` uses an abbreviated version of the info dict: `_title` is shown in full; all other multilingual strings are replaced with `"…"` to keep the disclosure compact.

**`renderDataSection(_:registry:)`**  
Dispatches to the appropriate shape renderer based on which key is present in `_data`:

| Key | Renderer |
|-----|---------|
| `_scalar` | `appendScalarShape` — "Scalar — Type (companions)" |
| `_object` | `appendObjectShape` — schema constraints table |
| `_dict` | `appendDictShape` — key type + value type |
| `_set` | `appendSetShape` — element type + bounds |
| `_nested` | `appendNestedShape` — leaf element type |
| `_array` | `appendArrayShape` — element type + bounds |
| `_tuple` | `appendTupleShape` — per-position type table |
| `_typedef` | `appendTypedefShape` — linked typedef reference |
| (empty) | "Any" |

Followed by a full JSON disclosure of the `_data` object.

### 5. Companion rendering — `renderCompanions(_:registry:)`

Renders the companion properties of a scalar type (e.g. `_decimals`, `_unit`, `_enums`, `_range_valid`) as a semicolon-separated inline string. Rendered in a fixed canonical order; unrecognised keys follow alphabetically.

Special companion handling:
- **`_enums`**: each item linked via `enumRootLink` (always produces a link, even if the enum root has no card yet)
- **`_range_valid` / `_range_normal` / `_range_valid_string` / `_range_normal_string`**: rendered as `label: bounds`
- **`_regexp`, `_unit`, `_unit_name`, `_unit_symbol`**: rendered as code spans

### 6. Object schema rendering — `appendSchemaConstraints(_:to:registry:)`

Handles the `_open` / `_closed` schema constraints in canonical order:

- **`_required`**: rendered by `appendRequiredConstraint`. Each `_selector` object produces a selector label (`_all` or `_any` with bounds) followed by the linked list of candidates.
- **`_recommended`, `_banned`, `_computed`, `_locked`, `_immutable`**: each rendered as `**Label:** linked · linked · linked`.
- **`_default-value`**: abbreviated to `*see JSON*` (too complex to inline).

### 7. Role tags — `renderRoleTags(_:registry:)`

When a term has `_domn._term_role`, each role GID is rendered as a coloured HTML badge (`<a>` with inline CSS). Tags sit between the title and the `_gid` subtitle, giving a quick visual summary of the term's role (predicate, typedef, enum-item, descriptor, etc.).

### 8. Sync behaviour

| Condition | Action |
|-----------|--------|
| Term exists, card missing | Card created |
| Term exists, card content different | Card overwritten |
| Term exists, card content identical | Card left untouched (no file I/O) |
| Card exists, term deleted from data | Card deleted |

The identity check is a full string comparison — no hashing. Terms without `_info` produce no card (alias terms).

---

## Output Format

Cards are Markdown files named `<_gid>.md` in the `docs/` directory. They use GitHub-flavoured Markdown with some HTML (`<details>`, `<summary>`, `<p>`, `<a>` tags) for collapsible JSON disclosures and role badges.

Cross-term links use relative file references (`gid.md`) — they work correctly when browsed on GitHub or any Markdown viewer that serves files from the same directory.

---

## Configuration

`dictionary.config.json` at the repository root can override default paths:

```json
{
    "paths": {
        "core":  "data/core",
        "terms": "docs"
    }
}
```

---

## Multilingual Handling

Cards render the `ISO_639_3_eng` (English) value only. When no English entry is present, the first available language value is used as a fallback. Full multilingual rendering is planned for Phase 4.
