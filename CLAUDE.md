# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Metadata Store is a database-hosted metadata repository and data dictionary. It is hosted in an **ArangoDB** database and contains the data and code needed to populate a data dictionary core and ancillary data standards.

## Architecture

- **Database**: ArangoDB (NoSQL document/graph database)
- **Purpose**: Define and serve a data dictionary and metadata repository

## Project Status

This project is in early initialization. No source code exists yet. The `.gitignore` is prepared for a Node.js/TypeScript ecosystem (npm/yarn, Vite, Next.js, etc.), suggesting the Foxx services will be written in JavaScript/TypeScript.

## Development Notes

- The `scrapbook/Notes.txt` file is for informal developer notes and scratch content.
- If something goes sideways, stop and re-plan immediately — do not keep pushing in the wrong direction.

---

## Session Progress

> This section is maintained by Claude and updated at the end of each working session to allow seamless resumption across sessions.

### Completed
- `_code` section — identifiers (`_gid`, `_lid`, `_nid`), computation rules, secondary properties (`_aid`, `_pid`, `_name`, `_symbol`, `_regexp`, `_emoji`)
- `_info` section — multilingual structure, core and secondary properties, alias term exception
- `_data` section — **Version 3 design** documented in this file. Prototype terms in `notes/prototype/`.
- Graphs section — edge structure, `_path`/`_path_data`, functional and non-functional predicates, sections, bridge graphs, alias resolution, conditional rules, traversal semantics
- Phase 2 core term JSON files: `_term.json`, `_code.json`, `_info.json`, `_data.json` (40 terms), `_type.json` (55 terms), `_rule.json` (15 terms, superseded by V3 — retained for reference), `_predicates.json` (13 terms)
- Edge JSON files: `_scalar.edge.json`, `_comparable.edge.json`, `_dict_key.edge.json` — all verified correct

### In Progress
- Nothing currently in progress.

### Pending
- **`_scalar.json`**: user is adding missing terms; after that, write `_info` for the remaining terms in the file (`_unit`, `_unit_name`, `_unit_symbol`, `_range_valid`, `_range_normal`, `_range_valid_string`, `_range_normal_string`, `_decimals`, `_elements`, `_min-items`, `_max-items`, and any others present). Then regenerate all term cards.
- After `_scalar.json` is complete, continue with remaining `data/core/` JSON files.
- **Open design questions**:
  1. **Modification cost**: graph-based schemas — cost of renaming/removing a term that acts as a property needs analysis.
  2. **Conflict detection**: general mechanism for detecting contradictory rules (start: check `_path_data` rules against `_banned`).
  3. **UI rendering hints (`_display` section)**: deferred — design after core dictionary structure is stable.

### Recent session (2026-04-10) — `_scalar.json` `_info` content
- Fixed `_dict_value._data` (reverted to `_typedef: "_data"`), `_path_data._dict_value` to `{}` in `_edge.json`.
- Updated `_predicate.json`: fixed V3 terminology in `_predicate_property-of`, `_predicate_value-of`, `_predicate_structural`, `_predicate_required-by`, `_predicate_banned-by`, `_predicate_recommended-by`. Fixed `"aid"` typo. Rendered all predicate cards.
- Wrote `_info` for `_scalar` (first term): type-as-key convention, five type-family tables with Markdown links, four usage examples.
- Wrote `_info` for all 31 remaining type terms in `_scalar.json`: `_number`, `_number_float`, `_number_integer`, `_string`, all `_string_*` variants, `_text` (new), all `_text_*`, all `_term_key_*`, `_handle`, `_timestamp`, `_boolean`, `_enum`, `_enums`. Each has definition, description, and schema + stored-value examples.
- Key content decisions: `_string` vs `_text` distinction (short/indexable vs long/non-indexable); `_string_LaTeX` is comparable and dict-key in V3; `_string_regexp` is comparable but NOT dict-key; timestamp and boolean are NOT dict-key; text types are non-comparable.
- Regenerated all 44 term cards in `docs/`.

### Recent session (2026-04-08) — VERSION 3 PROTOTYPE + CLAUDE.MD REWRITE
- Rewrote CLAUDE.md Data Dictionary Rules section to reflect Version 3.
- **Key V3 change**: data types are property keys within the shape object, not enumeration values of a `_scalar_type` property. `"_scalar": {"_number_float": {"_decimals": 2}}` replaces `"_scalar": {"_scalar_type": "_type_number_float", "_decimals": 2}`.
- **`_object` is now a data shape** (not a scalar type). `{}` = any struct; `{_open: {}}` = open schema; `{_closed: {}}` = closed schema. Inline schema constraints replace the separate `_rule` section.
- Selection mechanism: `_selectors` (array of `_all`/`_any` objects) + `_selection` (nested array of descriptor keys). `_all` = mandatory group; `_any` = optional group.
- `_type` namespace: `_type_scalar`, `_type_set`, `_type_key` as typedef terms. `_scalar`, `_set`, `_dict_key`, `_nested` reference these via `_typedef`.
- Type naming: `_number`, `_string`, `_text`, `_boolean`, `_timestamp`, `_handle`, `_enum`, `_term_key*`. `_text*` (HTML/Markdown/SVG) are non-comparable; `_string_LaTeX` is comparable.
- Units: `_unit_name`, `_unit_symbol` (underscore namespace, replacing hyphenated forms).
- Enum constraint: `_enums` (set of enum-root `_gid`s, replaces `_kind_enum`).
- `_predicate_value-of` retained for future use; not currently used in the prototype.
- Deleted `data/core/old/`. Verified `_scalar.edge.json`, `_comparable.edge.json`, `_dict_key.edge.json`.

### Recent session (2026-03-30, continued)
- Created `data/core/_predicates.json`: 13 terms (4 grouping roots, 9 predicate terms).
- Structural predicates (`_predicate_required-by`, `_predicate_banned-by`, `_predicate_recommended-by`) reserved for future dataset validation use.

### Recent session (2026-03-29)
- Created `data/core/_term.json` (13 terms), `_code.json` (10 terms), `_info.json` (13 terms).
- All use V2 naming conventions — will need updating for V3.

---

## Project Roadmap

> This section records the planned sequence of work phases for the project, providing orientation across sessions.

### Phase 1 — Term section documentation *(complete)*
Documented all term sections and graph mechanics in this file.

### Phase 2 — Core terms *(current)*
Create `data/core/` with JSON term files for the dictionary's own building blocks. Working instructions in `data/core/CLAUDE.md`.

### Phase 3 — Standards
Create `data/standards/` with ISO and other standards as dictionary terms. Primary source: [Debian iso-codes](https://salsa.debian.org/iso-codes-team/iso-codes) (ISO 639, 3166, 4217, 15924, and others). Supplementary: [mledoze/countries](https://github.com/mledoze/countries), [flag-icons](https://github.com/lipis/flag-icons).

### Phase 4 — Translations
Add translations to all `_info` sections using the Debian iso-codes translations as the baseline.

### Phase 5 — Edge relationships
Add edge records encoding relationships between terms: namespaces, enumerations, aliases, schema inheritance, conditional rules, and property graphs.

### Phase 6 — Validation and manipulation library
Develop a JavaScript/TypeScript library (ArangoDB Foxx or standalone Node.js) that validates datasets against the dictionary.

### Phase 7 — Dictionary management user interface
Build a UI for creating and editing terms, navigating graphs and enumerations.

---

## Data Dictionary Rules

This section is the **source of truth** for the data dictionary structure. All code, data files, and resources generated for this project must conform to these rules.

### Core Concepts

#### Terminology

| Preferred term | Synonym(s) | Meaning |
|----------------|------------|---------|
| **enumeration** | controlled vocabulary | A set of terms organised as a graph whose root defines the value domain and whose nodes are the allowed values. |
| **descriptor**  | data variable, variable term | A term that carries a `_data` section, describing the type and shape of the data it represents. |

- The dictionary is a collection of **terms** stored as nodes in an ArangoDB directed graph.
- **Terms** are stored in document collections; **relationships** between terms are stored in edge collections.
- Terms represent namespaces, enumerations, descriptors, and other items.
- The dictionary is **self-describing and recursive**: the fields and structures that make up the dictionary are themselves terms.

### Term Structure

A term is a document with top-level **sections**. Which sections a term contains determines its function and behaviour.

| Section  | Purpose                                        | Required by                        |
|----------|------------------------------------------------|------------------------------------|
| `_code`  | Identifiers and codes by which the term is referenced | All terms                          |
| `_info`  | Description of what the term represents        | Most terms                         |
| `_data`  | Data type and shape of the referenced data     | Descriptor terms                   |
| `_prop`  | Concrete attributes of the real-world entity the term represents | Optional                |
| `_domn`  | Categorical classification of the term         | Optional                           |

> **Note:** The `_rule` section of Version 2 is eliminated. Schema constraints (required/recommended/banned properties) are now expressed inline within `_data._object._open` or `_data._object._closed`.

### `_code` Section

The `_code` section provides a series of identifiers for the term.

#### Core properties

| Property | Required  | Description |
|----------|-----------|-------------|
| `_gid`   | Computed  | Global unique identifier. Copied to the ArangoDB `_key` field before saving. |
| `_lid`   | Yes       | Local identifier within the term's namespace. Regex: `^[a-zA-Z0-9\-:.@+,=;$!*'%()]{1,254}$` |
| `_nid`   | No        | Namespace of the term. Its value is the `_gid` of the term that represents the namespace. |

- **`_gid`**: Computed as the concatenation of `_nid` and `_lid` separated by the hardcoded underscore `_` separator. Copied to `_key` before saving.
- **`_lid`**: The local identifier of the term within its namespace. Required on all terms.
- **`_nid`**: The term's namespace. Optional.

#### `_gid` computation rules

| `_nid` value          | `_gid` formula         | Example                                    |
|-----------------------|------------------------|--------------------------------------------|
| Present and non-empty | `_nid` + `_` + `_lid` | `ISO_3166` + `_` + `ITA` → `ISO_3166_ITA` |
| Empty string `""`     | `_` + `_lid`           | `""` + `_` + `code` → `_code`             |
| Omitted               | `_lid`                 | `ISO`                                      |

**Example 1 — standard namespaced term** (`_nid` present and non-empty):

```json
{
    "_key": "ISO_3166_ITA",
    "_code": {
        "_nid": "ISO_3166",
        "_lid": "ITA",
        "_gid": "ISO_3166_ITA"
    }
}
```

**Example 2 — dictionary building block** (`_nid` is empty string `""`):

When `_nid` is an empty string, the term is a core building block of the data dictionary itself. The leading underscore in the resulting `_gid` distinguishes these structural terms (e.g. `_code`, `_info`, `_data`).

```json
{
    "_key": "_code",
    "_code": {
        "_nid": "",
        "_lid": "code",
        "_gid": "_code"
    }
}
```

**Example 3 — top-level namespace term** (`_nid` omitted):

```json
{
    "_key": "ISO",
    "_code": {
        "_lid": "ISO",
        "_gid": "ISO"
    }
}
```

#### Secondary properties

`_aid` is required and computed. The remaining properties are optional.

| Property  | Required | Description |
|-----------|----------|-------------|
| `_aid`    | Required, Computed | "All identifiers" — the set of official identifiers for the term. Defaults to `[_lid]` if absent. Not immutable — grows when aliases are added. |
| `_pid`    | No       | "Provided identifiers" — custom identifiers used by data providers. |
| `_name`   | No       | A string containing the name of the term. |
| `_symbol` | No       | A LaTeX string containing the symbol of the term. |
| `_regexp` | No       | A regular expression used to validate the `_lid` of this term. |
| `_emoji`  | No       | An emoji character used as a visual icon for the term. |

### `_info` Section

The `_info` section contains human-oriented information about the term. All properties are **multilingual**: each property's value is a key/value object where the key is the `_gid` of a language term and the value is a string.

```json
{
    "_info": {
        "_title": {
            "ISO_639_3_eng": "Title",
            "ISO_639_3_ita": "Titolo"
        }
    }
}
```

#### Core properties

| Property      | Required         | Value type           | Description |
|---------------|------------------|----------------------|-------------|
| `_title`      | Yes              | Plain UTF-8 string   | The title or label of the term. |
| `_definition` | Yes              | Plain UTF-8 string   | The definition of the term. |
| `_description`| Usually required | Markdown/HTML string | Full description for a general audience. |

#### Secondary properties

| Property     | Required | Value type                    | Description |
|--------------|----------|-------------------------------|-------------|
| `_examples`  | No       | Markdown/HTML string          | Usage examples. |
| `_notes`     | No       | Markdown/HTML string          | Notes, comments and curator feedback. |
| `_url`       | No       | Array of Markdown/HTML strings| Internet references. |
| `_citation`  | No       | Array of Markdown/HTML strings| Citations required when using the term. |
| `_provider`  | No       | Array of Markdown/HTML strings| Contact information for metadata curators. |
| `_methods`   | No       | Markdown/HTML string          | Measurement conditions and methods. |
| `_usage`     | No       | Markdown/HTML string          | How and why the value is used. |

#### Alias terms and omitting `_info`

An alias term is created when two terms share identical content except for their `_code` section. The alias term carries only its `_code` section; the canonical term holds the full content. When the dictionary resolves an alias, it returns the canonical term. This mechanism is described in the Graphs section.

---

### `_data` Section

The `_data` section is used by descriptor terms. It describes the type and shape of the data the term represents. An **empty object** (`"_data": {}`) means the value can be of any shape and type.

#### Data shapes

At most one of the following top-level properties is present in `_data`:

| Property   | Description |
|------------|-------------|
| `_scalar`  | A single value. Type is expressed as a property key inside the object. |
| `_object`  | An object/struct. Three forms: `{}` = any struct; `{_open: {...}}` = open schema; `{_closed: {...}}` = closed schema. |
| `_dict`    | A key/value dictionary. `_dict_key` defines key type; `_dict_value` defines value type. |
| `_tuple`   | An ordered positional array where each element is a full `_data` section. |
| `_array`   | An ordered list of same-type elements. |
| `_set`     | An unordered list of unique elements. Element type must be comparable. |
| `_nested`  | A recursively nested array whose leaves are typed sets. |
| `_typedef` | A reference to a typedef term by `_gid`. Mutually exclusive with all six inline shapes. |

---

#### `_scalar`

`_scalar` is an object whose single property key is the **data type**. The value associated with that key is an object of **companion properties** specific to that type. An empty `"_scalar": {}` means any scalar value is accepted.

```json
{
    "_data": {
        "_scalar": {
            "_number_float": {
                "_decimals": 2,
                "_unit": "_unit_length_cm"
            }
        }
    }
}
```

The validator identifies the type by the key present in `_scalar`, then applies the schema defined by that type term for the companion properties.

##### Scalar types

All scalar types are enumerated in `_type_scalar`. They fall into the following families:

**Number types**

| Type             | Accepts         | Notes |
|------------------|-----------------|-------|
| `_number`        | Any number      | Integer or float accepted |
| `_number_float`  | Floating-point  | Must be stored as float |
| `_number_integer`| Integer only    | No decimal part |

Companion properties for number types: `_unit`, `_unit_name`, `_unit_symbol`, `_range_valid`, `_range_normal`. Additionally, `_decimals` is accepted by `_number` and `_number_float` but **not** `_number_integer`.

```json
{
    "_scalar": {
        "_number_float": {
            "_decimals": 2,
            "_unit": "_unit_length_cm",
            "_range_valid": {
                "_min-range-inclusive": 0.0,
                "_max-range-exclusive": 300.0
            }
        }
    }
}
```

---

**String types** (comparable; may appear in sets and as dictionary keys)

`_string` is a generic UTF-8 string. The `_string_*` variants declare a specific encoding or format — the type itself carries the format information. `_regexp` is accepted only by `_string` and `_string_HEX`; format-specific variants are self-defining. `_string_regexp` means the stored value is itself a pattern.

| Type               | Description                         | Companion properties |
|--------------------|-------------------------------------|----------------------|
| `_string`          | Generic UTF-8 string                | `_regexp`, `_unit`, `_unit_name`, `_unit_symbol`, `_range_valid_string`, `_range_normal_string` |
| `_string_URI`      | Uniform Resource Identifier         | — |
| `_string_Email`    | Email address                       | — |
| `_string_Hostname` | Internet hostname                   | — |
| `_string_IPv4`     | IPv4 address                        | — |
| `_string_IPv6`     | IPv6 address                        | — |
| `_string_YMD`      | Partial/full date (YYYYMMDD format) | `_range_valid_string`, `_range_normal_string` |
| `_string_date`     | Date (`YYYY-MM-DD`)                 | `_range_valid_string`, `_range_normal_string` |
| `_string_time`     | Time (`HH:MM:SS`)                   | `_range_valid_string`, `_range_normal_string` |
| `_string_date-time`| Date-time (`YYYY-MM-DDTHH:MM:SS`)  | `_range_valid_string`, `_range_normal_string` |
| `_string_LaTeX`    | LaTeX expression; rendered with KaTeX | — |
| `_string_HEX`      | Hexadecimal string                  | `_regexp`, `_range_valid_string`, `_range_normal_string` |
| `_string_regexp`   | A regular expression (stored value is a pattern) | — |

```json
{
    "_scalar": {
        "_string": {
            "_regexp": "^[A-Z]{2,3}$"
        }
    }
}
```

---

**Text types** (non-comparable; only in `_scalar`, not usable in sets or as dictionary keys)

`_text` is the base type for rich, non-comparable content. The `_text_*` variants declare the markup format.

| Type           | Description   |
|----------------|---------------|
| `_text`        | Generic text  |
| `_text_HTML`   | HTML          |
| `_text_Markdown` | Markdown    |
| `_text_SVG`    | SVG image     |

No companion properties are accepted for text types (the format is self-declared).

---

**Term key types** (comparable; may appear in sets and as dictionary keys)

`_term_key` is a string matching the `_key` of a document in the terms collection. The `_term_key_*` variants constrain the role of the referenced term.

| Type                    | Constraint |
|-------------------------|------------|
| `_term_key`             | Any term |
| `_term_key_enum-root`   | Enumeration root |
| `_term_key_enum-item`   | Enumeration element |
| `_term_key_descriptor`  | Descriptor (has `_data` section) |
| `_term_key_predicate`   | Predicate |
| `_term_key_typedef`     | Typedef term |

No companion properties needed — the type itself encodes the constraint.

```json
{
    "_scalar": {
        "_term_key_descriptor": {}
    }
}
```

---

**Other scalar types**

| Type        | Description | Companion properties |
|-------------|-------------|----------------------|
| `_handle`   | ArangoDB document `_id` (`<collection>/<key>`) | — |
| `_timestamp`| Unix timestamp (integer, seconds since 1970-01-01 UTC) | `_range_valid`, `_range_normal` |
| `_boolean`  | True/false boolean | — |
| `_enum`     | `_gid` of an enumeration element | `_enums` (set of enumeration root `_gid`s) |

`_enums` constrains which controlled vocabularies the enumeration value must belong to. When absent, the value may be any enumeration element from any vocabulary.

```json
{
    "_scalar": {
        "_enum": {
            "_enums": ["ISO_639_3"]
        }
    }
}
```

---

##### Range properties

Two range families exist:

- **Valid range** (`_range_valid`, `_range_valid_string`): hard boundaries. Values outside are **errors**.
- **Normal range** (`_range_normal`, `_range_normal_string`): expected boundaries. Values outside are **flagged as outliers**.

**Numeric ranges** (`_range_valid`, `_range_normal`):

| Property               | Description |
|------------------------|-------------|
| `_min-range-inclusive` | Lower bound, value included (≥) |
| `_min-range-exclusive` | Lower bound, value excluded (>) |
| `_max-range-inclusive` | Upper bound, value included (≤) |
| `_max-range-exclusive` | Upper bound, value excluded (<) |

```json
{
    "_range_valid": {
        "_min-range-inclusive": 0,
        "_max-range-exclusive": 100
    }
}
```

**String ranges** (`_range_valid_string`, `_range_normal_string`):

| Property                      | Description |
|-------------------------------|-------------|
| `_min-range-inclusive_string` | Lower bound, value included |
| `_min-range-exclusive_string` | Lower bound, value excluded |
| `_max-range-inclusive_string` | Upper bound, value included |
| `_max-range-exclusive_string` | Upper bound, value excluded |

At most one min-property and one max-property should be present; omitting a bound leaves that end open.

---

#### `_object`

`_object` is a data shape for structured objects. Three forms:

1. **`"_object": {}`** — any struct including non-dictionary objects. No type or schema constraint.
2. **`"_object": {"_open": {...}}`** — open schema: listed constraints apply, but properties not in the schema are also accepted.
3. **`"_object": {"_closed": {...}}`** — closed schema: only properties listed in the schema are accepted.

The value of `_open` or `_closed` is a **schema object** containing constraint properties. These replace the old `_rule` section.

##### Schema constraint properties

| Property        | Description |
|-----------------|-------------|
| `_required`     | Array of `_selector` objects. Defines which properties must be present and their cardinality rules. |
| `_recommended`  | Set of descriptor `_gid`s. Optional/advisory properties; enforced as a whitelist in closed schemas. |
| `_banned`       | Set of descriptor `_gid`s. Properties that must never be present. Unconditional — takes precedence over all other rules. |
| `_computed`     | Set of descriptor `_gid`s. Values automatically set by the system if not provided. |
| `_locked`       | Set of descriptor `_gid`s. Fully managed by the system; users cannot set or modify these. |
| `_immutable`    | Set of descriptor `_gid`s. Cannot be modified once set, whether by the user or by the system. |
| `_default-value`| Dictionary mapping descriptor `_gid`s to default values. Applied before `_required` is checked. |

In a **closed schema**: `_required` and `_recommended` are disjoint tiers of the allowed set. The full whitelist of permitted properties is their union; no property should appear in both. `_banned` is unconditional.

In an **open schema**: `_recommended` is advisory; properties not listed are still accepted.

##### Selection mechanism (`_required`)

`_required` is an **array of `_selector` objects**. Each `_selector` object has:

- **`_selectors`** — an array of selector rule objects, each containing exactly one of:
  - `_all` — mandatory group: all elements are selected by default; `_elements` constrains how many must be chosen.
  - `_any` — optional group: none are selected by default; `_elements` constrains how many may be chosen (including zero unless `_min-items` is set).
- **`_selection`** — a (possibly nested) array of descriptor `_gid`s that the selectors operate on.

Both `_all` and `_any` have the same structure: an `_elements` object (or empty `{}`) with optional `_min-items` and `_max-items` sub-properties.

**`_all` with `_min-items: 1, _max-items: 1`** means exactly one of the candidates in `_selection` must be present:

```json
{
    "_required": [
        {
            "_selectors": [
                {"_all": {"_min-items": 1, "_max-items": 1}}
            ],
            "_selection": ["_number", "_string", "_boolean"]
        }
    ]
}
```

Exactly one of `_number`, `_string`, `_boolean` must be present; the others must be absent.

**`_any` with `_min-items: 1`** means at least one of the candidates must be present (optional selection with a minimum):

```json
{
    "_required": [
        {
            "_selectors": [
                {"_any": {"_min-items": 1}}
            ],
            "_selection": ["_min-items", "_max-items"]
        }
    ]
}
```

At least one of `_min-items` or `_max-items` must be present; both may be present.

**`_all` with no `_elements`** means all candidates in `_selection` must be present:

```json
{
    "_required": [
        {
            "_selectors": [{"_all": {}}],
            "_selection": ["_selectors", "_selection"]
        }
    ]
}
```

Both `_selectors` and `_selection` are required.

When multiple `_selector` objects appear in `_required`, **all of them must be satisfied simultaneously** (AND logic).

##### Example — type selection

The `_type_scalar` typedef term uses a closed object requiring exactly one type key:

```json
{
    "_data": {
        "_object": {
            "_closed": {
                "_required": [
                    {
                        "_selectors": [
                            {"_all": {"_min-items": 1, "_max-items": 1}}
                        ],
                        "_selection": [
                            "_number", "_number_float", "_number_integer",
                            "_string", "_string_URI", "_string_Email",
                            "_text", "_text_HTML", "_boolean", "_enum"
                        ]
                    }
                ]
            }
        }
    }
}
```

##### Example — open schema

```json
{
    "_data": {
        "_object": {
            "_open": {
                "_recommended": [
                    "_unit", "_unit_name", "_unit_symbol",
                    "_range_valid", "_range_normal", "_decimals"
                ]
            }
        }
    }
}
```

This open schema lists recommended properties but accepts any additional property.

##### Example — closed schema with computed property

```json
{
    "_data": {
        "_object": {
            "_closed": {
                "_required": [
                    {
                        "_selectors": [{"_all": {}}],
                        "_selection": ["_gid", "_lid"]
                    }
                ],
                "_recommended": ["_nid", "_aid", "_pid", "_name", "_symbol", "_regexp", "_emoji"],
                "_computed": ["_gid", "_aid"],
                "_immutable": ["_lid"]
            }
        }
    }
}
```

---

#### `_set`

`_set` defines an unordered array of **unique** elements. Because uniqueness requires comparability, element types are restricted to comparable types (all scalar types except `_text`, `_text_HTML`, `_text_Markdown`, `_text_SVG`).

`_set` uses `_typedef: "_type_set"` to constrain the element type. The type is expressed as a property key inside `_set`, exactly as in `_scalar`:

```json
{
    "_data": {
        "_set": {
            "_enum": {
                "_enums": ["ISO_639_3"]
            }
        }
    }
}
```

The `_type_set` typedef adds `_elements` as a recommended companion property for controlling the number of elements.

---

#### `_nested`

`_nested` is a recursively nested array whose leaves are sets. It uses `_typedef: "_type_set"` — the leaf-level type follows set semantics (comparable types only). The nesting depth is unlimited; the validator descends until it reaches the leaf elements.

```json
{
    "_data": {
        "_nested": {
            "_string": {}
        }
    }
}
```

This describes a nested array structure whose leaves are sets of generic strings.

---

#### `_array`

`_array` is an ordered list of same-type elements. It is recursive: the element type may itself be any data shape. If `_array` is empty, the array may contain elements of any type.

`_array` requires exactly one shape sub-property (the element type) and accepts `_elements` as an optional companion:

| Property    | Required | Description |
|-------------|----------|-------------|
| `_elements` | No       | Minimum and maximum number of elements in the array. |
| `_scalar`   | No*      | Array elements are scalar values. |
| `_object`   | No*      | Array elements are objects. |
| `_dict`     | No*      | Array elements are key/value dictionaries. |
| `_tuple`    | No*      | Array elements are tuples. |
| `_array`    | No*      | Array elements are arrays (recursive). |
| `_set`      | No*      | Array elements are sets. |
| `_nested`   | No*      | Array elements are nested arrays. |
| `_typedef`  | No*      | Array elements follow the referenced typedef. |

\* Exactly one of these must be present when `_array` is not empty.

`_elements` constrains the number of items:

| Property     | Description |
|--------------|-------------|
| `_min-items` | Minimum number of elements (inclusive lower bound). |
| `_max-items` | Maximum number of elements (inclusive upper bound). |

```json
{
    "_data": {
        "_array": {
            "_elements": {"_min-items": 1, "_max-items": 10},
            "_scalar": {"_string": {}}
        }
    }
}
```

---

#### `_tuple`

`_tuple` is an ordered positional array where each element is defined by a full `_data` section. The type at position *n* applies to the value at position *n*. This is expressed by defining `_tuple` as `_array: {_typedef: "_data"}`.

In practice, a tuple value looks like an array of `_data` section objects, one per position:

```json
{
    "_data": {
        "_tuple": [
            {"_scalar": {"_string_date": {}}},
            {"_scalar": {"_number_float": {"_unit": "_unit_weight_kg"}}},
            {"_scalar": {"_enum": {"_enums": ["ISO_639_3"]}}}
        ]
    }
}
```

Position 0 is a date string, position 1 is a float weight, position 2 is a language code.

---

#### `_dict`

`_dict` is a key/value dictionary structure. Both `_dict_key` and `_dict_value` are required.

| Property      | Required | Description |
|---------------|----------|-------------|
| `_dict_key`   | Yes      | Defines the data type of dictionary keys. Uses `_typedef: "_type_key"`. |
| `_dict_value` | Yes      | Defines the data type of dictionary values. Uses `_typedef: "_data"`. |

##### `_dict_key`

`_dict_key` uses `_typedef: "_type_key"`. The key type is expressed as a property key exactly as in `_scalar`. Key types are string-compatible comparable types only — numbers, boolean, timestamp, `_string_regexp`, and `_text*` types cannot be dictionary keys.

Permitted key types: `_string` and all `_string_*` variants (except `_string_regexp`), all `_term_key*` variants, `_handle`, `_enum`.

```json
{
    "_dict_key": {
        "_term_key_descriptor": {}
    }
}
```

##### `_dict_value`

`_dict_value` uses `_typedef: "_data"` — any full `_data` section. An empty `_dict_value` (`{}`) means values may be of any shape and type.

```json
{
    "_data": {
        "_dict": {
            "_dict_key": {
                "_enum": {"_enums": ["ISO_639_3"]}
            },
            "_dict_value": {
                "_scalar": {"_string": {}}
            }
        }
    }
}
```

This describes the multilingual structure used throughout `_info`: keys are ISO 639-3 language `_gid`s, values are plain strings.

---

#### Typedef mechanism

A **typedef** term defines a reusable data shape. Any term carrying `_term_role_typedef` in its `_domn._term_role` may act as a typedef. Other terms reference it by placing the typedef `_gid` in the `_typedef` property of their `_data` section.

**Rules:**
- `_typedef` is mutually exclusive with all six inline shape properties.
- The typedef term must define its shape inline. Chaining (`_typedef` referencing another `_typedef`) is prohibited.
- A descriptor referencing a typedef via `_data._typedef` must not define inline schema constraints — those belong on the typedef term.
- Validation performs one lookup: find the typedef term, read its `_data` section, apply it inline.

**The three built-in typedef terms:**

| Typedef       | Covers |
|---------------|--------|
| `_type_scalar`| All scalar types (full `_type_scalar` selection) |
| `_type_set`   | Comparable scalar types only (excludes `_text*`); adds `_elements` as recommended |
| `_type_key`   | String-compatible types only (excludes numbers, boolean, timestamp, `_string_regexp`, `_text*`) |

`_scalar`, `_set`, `_dict_key`, and `_nested` use `_typedef` to inherit from these rather than duplicating the type list:

```json
{
    "_data": {"_typedef": "_type_scalar"}
}
```

---

### Graphs

Graphs are implemented using ArangoDB **edge collection** documents. Each edge document describes a directed relationship between two nodes (terms or other documents) and belongs to one or more named graphs.

#### Edge Document Structure

##### Built-in ArangoDB properties

| Property | Type        | Required | Description |
|----------|-------------|----------|-------------|
| `_from`  | handle      | Yes      | Document handle of the relationship **source** node. |
| `_to`    | handle      | Yes      | Document handle of the relationship **destination** node. |

##### Custom edge properties

| Property     | Type                        | Required | Default | Description |
|--------------|-----------------------------|----------|---------|-------------|
| `_predicate` | enum                        | Yes      | —       | The relationship predicate. |
| `_path`      | Set of handles              | Yes      | —       | The set of graph root handles whose traversal passes through this edge. |
| `_path_data` | Open dictionary (any struct)| Yes      | `{}`    | Data associated with the edge, scoped by path or node context. |

#### Edge Uniqueness and Key Computation

No two edges may share the same `_from`/`_predicate`/`_to` combination. The `_key` of an edge document is computed as the **MD5 hash** (lowercase) of the concatenation `_from + "/" + _predicate + "/" + _to`:

```aql
LET _key = LOWER(MD5(CONCAT(doc._from, "/", doc._predicate, "/", doc._to)))
```

`_key` is not written to the edge JSON files — it is computed at insertion time.

This uniqueness constraint is the foundation of the `_path` mechanism: when multiple graphs share the same directed relationship, they share a single edge document and each graph's root handle is added to the `_path` set.

#### The `_path` Property

`_path` is a set of document handles, each identifying a graph by its **root node**. Filtering edges by a value present in `_path` isolates the edges belonging to a specific graph.

#### The `_path_data` Property

`_path_data` is an open dictionary that associates data with the edge, scoped by context. Keys are document handles or descriptor `_gid`s:

| Key pattern                      | Meaning |
|----------------------------------|---------|
| Graph root handle (from `_path`) | Data specific to this edge within that graph. |
| `_from` or `_to` handle          | Data related to a node at one end of the relationship. |
| Descriptor `_gid`                | General-purpose data associated with the edge. |

```json
{
    "_key": "<edge hash>",
    "_from": "locations/Roma",
    "_predicate": "_predicate_travel-to",
    "_to": "locations/Milano",
    "_path": ["airlines/airline-A", "airlines/airline-B"],
    "_path_data": {
        "airlines/airline-A": {"price": 150, "duration": 75},
        "airlines/airline-B": {"price": 200, "duration": 45},
        "locations/Roma": {"taxi": 70, "duration": 45},
        "locations/Milano": {"taxi": 90, "duration": 30},
        "passengers": 1247
    }
}
```

#### Predicates

The predicate (`_predicate`) qualifies the nature of the relationship. All predicates are enumeration terms. They fall into two categories: **functional** (carry domain meaning; followed during traversal) and **non-functional** (structural aids).

All predicates follow a **many-to-one direction**: `_from` is the leaf (child, member, element) and `_to` is the root (parent, container, category).

##### Functional Predicates

| Predicate                | Description |
|--------------------------|-------------|
| `_predicate_enum-of`     | `_from` is a valid enumeration element of the `_to` controlled vocabulary. |
| `_predicate_property-of` | `_from` descriptor is a property of the `_to` schema term. When `_path_data` contains a rule object, that rule is activated whenever the property is present (any value). |
| `_predicate_field-of`    | `_from` descriptor is a field of the `_to` term. Used to define form layouts or data table columns. |

```json
{
    "_key": "<edge hash>",
    "_from": "terms/ISO_3166_3_ITA",
    "_predicate": "_predicate_enum-of",
    "_to": "terms/ISO_3166_3",
    "_path": ["terms/ISO_3166_3"],
    "_path_data": {}
}
```

##### Non-Functional Predicates

| Predicate               | Description |
|-------------------------|-------------|
| `_predicate_section-of` | `_from` is a **section** (grouping header) within the `_to` graph. Skipped during validation; used as grouping headers during display. |
| `_predicate_bridge-of`  | `_from` is a **bridge** pointing into another graph. The bridge node is skipped during traversal; the traversal continues into the referenced graph's elements. |

---

**Sections**

A section groups elements within a graph under a named heading. During functional traversal (validation, lookup), sections are ignored.

```json
{
    "_key": "<edge A>",
    "_from": "terms/ISO_3166_3_ITA",
    "_predicate": "_predicate_enum-of",
    "_to": "terms/EUROPE",
    "_path": ["terms/ISO_3166_3"],
    "_path_data": {}
},
{
    "_key": "<edge B>",
    "_from": "terms/EUROPE",
    "_predicate": "_predicate_section-of",
    "_to": "terms/ISO_3166_3",
    "_path": ["terms/ISO_3166_3"],
    "_path_data": {}
}
```

> **Note:** Enumerations in this dictionary are **hierarchical**. If `_predicate_section-of` were replaced by `_predicate_enum-of`, then `EUROPE` itself would become a valid selectable value alongside its member elements. Both patterns are valid.

---

**Bridge graphs**

A bridge allows a custom graph to include a subset of elements from an existing complete graph without duplicating edge documents. The bridge node points to the complete graph with `_predicate_bridge-of`; individual elements are shared by adding the custom graph root to their `_path` set.

```json
{
    "_key": "<edge A>",
    "_from": "terms/ISO_3166_3_ITA",
    "_predicate": "_predicate_enum-of",
    "_to": "terms/ISO_3166_3",
    "_path": ["terms/ISO_3166_3", "terms/MyCountries"],
    "_path_data": {}
},
{
    "_key": "<edge B>",
    "_from": "terms/ISO_3166_3",
    "_predicate": "_predicate_bridge-of",
    "_to": "terms/MyCountries",
    "_path": ["terms/MyCountries"],
    "_path_data": {}
}
```

---

**Alias resolution**

An alias term carries only its `_code` section and acts as an alternative identifier for a canonical term. The alias mechanism reuses `_predicate_bridge-of` and `_predicate_enum-of`.

```json
{
    "_key": "<edge hash A>",
    "_from": "terms/ISO_639_3_eng",
    "_predicate": "_predicate_enum-of",
    "_to": "terms/ISO_639_1_en",
    "_path": ["terms/ISO_639_1"],
    "_path_data": {}
},
{
    "_key": "<edge hash B>",
    "_from": "terms/ISO_639_1_en",
    "_predicate": "_predicate_bridge-of",
    "_to": "terms/ISO_639_1",
    "_path": ["terms/ISO_639_1"],
    "_path_data": {}
}
```

- **Edge B** marks `ISO_639_1_en` as a bridge (skipped during traversal).
- **Edge A** declares `ISO_639_3_eng` as the valid canonical element reachable through the alias.

To resolve an alias directly: find edges where `_to = <alias>` AND `_predicate = _predicate_enum-of`. The `_from` is the canonical term.

---

**Conditional rules**

Conditional rules are constraints stored in `_path_data` on graph edges. Two predicates carry them:

| Predicate                | Trigger | Description |
|--------------------------|---------|-------------|
| `_predicate_property-of` (with non-empty `_path_data`) | Property is **present** (any value) | The rule applies whenever `_from` exists in the object, regardless of its value. |
| `_predicate_value-of`    | Property holds a **specific value** | `_from` is a possible value of the property `_to`. When `_to` holds value `_from` within the structural context identified by `_path`, the rules in `_path_data[path_root]` apply. |

**Presence-triggered rules** (`_predicate_property-of` with `_path_data`): used when a constraint must apply for every possible value a property can hold. The canonical case is mutual exclusion — when `_unit` is present, `_unit_name` and `_unit_symbol` must be absent (and vice versa). This cannot be expressed with `_predicate_value-of` because the constraint is not tied to any specific value.

**Value-triggered rules** (`_predicate_value-of`): encodes what (the value, in `_from`), of which property (in `_to`), in which structural context (in `_path`), with what consequences (in `_path_data[path_root]`). Currently unused in the prototype — the depth-based type schema covers all present cases — but retained for future use when value-triggered schema changes are needed.

**The `_path_data` rule object** (keyed by graph root handle) contains schema constraints in the same format as `_object._open` or `_object._closed`:

```json
{
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_required": [
                {
                    "_selectors": [{"_all": {}}],
                    "_selection": ["_enums"]
                }
            ]
        }
    }
}
```

A `_closed: true` conditional rule replaces the base `_recommended` set for the activated context. A `_closed: false` conditional rule accumulates (unions with the base `_recommended`). `_required` always accumulates. `_banned` is unconditional.

**Rule graph self-sufficiency**: the rule graph is the sole source of truth for both validation and UI behaviour. Create an edge for every value that restricts the effective property set, even if the only consequence is that fewer properties are allowed than the base rule permits. Omit an edge only when the value truly changes nothing relative to the base rule.

#### Graph Traversal

Traversal always moves in the **many-to-one direction** (leaf → root). Follow edges where `_path` contains the target graph root handle, filtered by predicate type.

| Operation          | Predicates followed                                    | Predicates skipped      |
|--------------------|--------------------------------------------------------|-------------------------|
| Element validation | `_predicate_enum-of`                                   | `_predicate_section-of` |
| Display (tree)     | `_predicate_enum-of`, `_predicate_section-of`          | —                       |
| Bridge resolution  | `_predicate_bridge-of` (then switch `_path` context)   | —                       |

**Finding an element in a graph (is Italy in `ISO_3166_3`?):**

1. Filter edges where `_path` contains `terms/ISO_3166_3` AND `_predicate` is `_predicate_enum-of`.
2. If any edge has `_from = terms/ISO_3166_3_ITA`, the element is found.
3. If a bridge edge is encountered, switch the `_path` filter to the referenced graph root and continue there.

**Finding an element in a bridge graph (is Italy in `MyCountries`?):**

1. Find the bridge edge with `_to = terms/MyCountries`. Its `_from` is `terms/ISO_3166_3`.
2. Switch traversal context: filter edges where `_path` contains `terms/MyCountries` AND `_predicate` is `_predicate_enum-of`.
3. Edge A satisfies both conditions and has `_from = terms/ISO_3166_3_ITA`. Italy is found.
