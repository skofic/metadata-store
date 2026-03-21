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
- `_data` section — all five shapes (`_scalar`, `_array`, `_set`, `_tuple`, `_dict`), all `_type` variants, range properties
- `_rule` section — all properties (`_required`, `_recommended`, `_banned`, `_computed`, `_locked`, `_immutable`, `_default-value`), selection structures, open/closed schema design, `_banned` precedence
- Graphs section — edge structure, `_path`/`_path_data`, functional and non-functional predicates, sections, bridge graphs, alias resolution, `_predicate_value-of` conditional rules, traversal semantics

### In Progress
- Nothing currently in progress.

### Pending
- Core Concepts — multi-role concept: a term can simultaneously be a descriptor, an object schema, an enumeration element, and an enumeration root. Design rationale: `_term_descriptor` and `_term_object` exist as explicit validation targets — use them when a procedure must confirm that a term IS a descriptor or IS an object definition.
- **Open design questions** (still to be resolved):
  1. **Modification cost**: removing or renaming a term that acts as a property in a graph-based schema requires updating all edges referencing it and potentially cascading changes through dependent schemas. The cost and tooling implications of this need to be analysed before committing to the graph-based approach.
  2. **Conflict detection**: a concrete starting point exists (checking `_path_data` conditional rules against `_rule._banned`), but a general mechanism for detecting and reporting all contradictory rules needs to be designed.
- **Next topic (Phase 2)**:
  1. Review `_info` content in `data/core/containers.json`.
  2. Continue populating remaining core term files.

### Recent session (2026-03-21)
- Decided: `_closed` is **required** in ALL rule objects (base `_rule` sections AND `_path_data` conditional rule objects). Explicit presence eliminates ambiguity without tracing the hierarchy.
- Closed conditional rule replaces the base `_recommended` entirely; open conditional rule accumulates (union). `_required` always accumulates. `_banned` is unconditional.
- Added `_closed: true` to all 8 `_rule` sections in `containers.json` (`_term`, `_term_descriptor`, `_term_object`, `_edge`, `_code`, `_info`, `_data`, `_rule`).
- Added `_recommended` to `_data` term's `_rule` section (shape properties: `_scalar`, `_array`, `_set`, `_tuple`, `_dict`).
- Added `_closed: true` to `_required` term's `_rule` section in `_rule.json`.
- Added `_closed: true` and `_recommended` to the three range `_rule` sections in `_scalar.json` (`_range`, `_range_string`, `_range_date`).
- Updated `_closed` term description in `_rule.json` to state it is required in all rule objects and document conditional rule accumulation semantics.
- Updated root `CLAUDE.md`: added `_closed` to `_rule` properties table (as required), added `_closed` subsection, updated `_recommended` description.
- Updated `data/core/CLAUDE.md`: added `_closed` requirement to `_rule` Constraints section, documented conditional rule semantics.
- Rewrote `_scalar.edges.json` completely: 15 property-of edges, 10 `_type_*` value-of edges (closed, full whitelist), 2 `_kind_number_*` value-of edges (open; integer bans `_decimals`), 13 `_kind_string_*` value-of edges (open; each bans inapplicable properties), 6 `_kind_key_*` value-of edges (open; no additional rules).
- Decided: `_required` and `_recommended` are **disjoint** — a property appears in exactly one or neither, never both. Required = allowed + mandatory; recommended = allowed + optional. Closed-schema whitelist = their union. Updated all CLAUDE.md files and `_closed` term description to reflect this.
- Decided: `_aid` is **required and computed** (defaults to `[_lid]`; not immutable so aliases can be appended). Added `_gid` and `_aid` to `_required` in `_code._rule`; added `_aid` to `_computed`; removed `_gid` and `_aid` from `_recommended` (disjoint rule); added `_regexp` to `_recommended` (was missing from closed whitelist).
- Updated `_aid` definition and description in `_code.json` and CLAUDE.md.
- Regenerated term cards throughout.

### Recent session (2026-03-18)
- Added `_methods` optional property to `_info` section (Markdown/HTML, same format as `_description`; for measurement conditions and protocols on descriptor terms).
- Renamed all `iso_` namespace prefixes to `ISO_` across all source files; standalone `"iso"` identifier also uppercased to `"ISO"`.
- Fixed all remaining `_type_string_handle` → `_type_handle` and `_type_string_key` → `_type_key` references.
- Added SVG edge diagrams to `terms/images/` (`edge-basic.svg`, `edge-shared.svg`, `edge-bridge.svg`) and updated `_edge._examples` to reference them.
- Updated `_edge._description`: MD5 key formula now mentions `/` separator; "All predicates" → "Most predicates".
- Updated `_domn._description`: removed restriction to user-defined terms; `_domn` now serves as a general role/usage classifier for any term.
- Corrected `_set`: `_set_scalar` is now required (not optional); updated `_definition`, `_description`, and `_rule` accordingly.
- Revised `_set._description` to reference `_type` as the basis for `_set_type`, naming only the three excluded types.
- Added `_code` section to term card output (before `_data` and `_rule`).
- Restructured `_type_number` paragraph in `_type._description`: shared optional properties (`_unit`, `_unit-name`, etc.) now appear at the top level; `_kind_number` introduced after; `_decimals` remains only under `_kind_number_float`.

---

## Project Roadmap

> This section records the planned sequence of work phases for the project, providing orientation across sessions.

### Phase 1 — Term section documentation *(complete)*
Documented all four term sections (`_code`, `_info`, `_data`, `_rule`) and graph mechanics in this file. Source of truth for the dictionary structure is established.

### Phase 2 — Core terms *(current)*
Create `data/core/` with JSON term files for the dictionary's own building blocks. Working instructions in `data/core/CLAUDE.md`. Starting point: `collections.json` containing terms for the top-level structures (term object, edge object, `_code`/`_info`/`_data`/`_rule` sections, predicates, types, and other core enumerations). Claude writes and corrects `_info` content in English for all core terms.

### Phase 3 — Standards
Create `data/standards/` with ISO and other standards as dictionary terms. Working instructions in `data/standards/CLAUDE.md`. Primary source: [Debian iso-codes](https://salsa.debian.org/iso-codes-team/iso-codes) (ISO 639, 3166, 4217, 15924, and others, including curated translations). Supplementary sources:
- [mledoze/countries](https://github.com/mledoze/countries): supplementary country data (informational, treat as secondary).
- [flag-icons](https://github.com/lipis/flag-icons) or [hampusborgos/country-flags](https://github.com/hampusborgos/country-flags): SVG country flags.

### Phase 4 — Translations
Add translations to all `_info` sections using the Debian iso-codes translations as the baseline language coverage.

### Phase 5 — Edge relationships
Add edge records encoding relationships between terms: namespaces, enumerations, aliases, schema inheritance, conditional rules, and property graphs.

### Phase 6 — Validation and manipulation library
Develop a JavaScript/TypeScript library (ArangoDB Foxx or standalone Node.js) that validates datasets against the dictionary, enforces open/closed schema rules and conditional rule graphs, and serves as a programmatic ontology for navigating term relationships.

### Phase 7 — Dictionary management user interface
Build a UI for creating and editing terms, navigating graphs and enumerations, and enforcing structural correctness.

---

## Data Dictionary Rules

This section is the **source of truth** for the data dictionary structure. All code, data files, and resources generated for this project must conform to these rules.

### Core Concepts

#### Terminology

Two pairs of synonyms appear throughout this document. The preferred term is used consistently from here on:

| Preferred term | Synonym(s) | Meaning |
|----------------|------------|---------|
| **enumeration** | controlled vocabulary | A set of terms organised as a graph whose root defines the value domain and whose nodes are the allowed values. |
| **descriptor**  | data variable, variable term | A term that carries a `_data` section, describing the type and shape of the data it represents. |

- The dictionary is a collection of **terms** stored as nodes in an ArangoDB directed graph.
- **Terms** are stored in document collections; **relationships** between terms are stored in edge collections.
- Terms represent namespaces, enumerations, descriptors, and other items.
- The dictionary is **self-describing and recursive**: the fields and structures that make up the dictionary are themselves terms. The dictionary describes both external data and itself.

### Term Structure

A term is a document with top-level **sections**. Sections are objects that contain a set of properties. Which sections a term contains determines its function and behaviour.

The six term sections are:

| Section  | Purpose                                        | Required by                        |
|----------|------------------------------------------------|------------------------------------|
| `_code`  | Identifiers and codes by which the term is referenced | All terms                          |
| `_info`  | Description of what the term represents        | Most terms                         |
| `_data`  | Data type and shape of the referenced data     | Descriptor terms                   |
| `_rule`  | Structure schema rules (required/forbidden fields, etc.) | Schema terms                       |
| `_prop`  | Concrete attributes of the real-world entity the term represents | Optional                |
| `_domn`  | Categorical classification of the term (domain, measurement type, etc.) | Optional       |

### `_code` Section

The `_code` section provides a series of identifiers for the term.

#### Core properties

| Property | Required  | Description |
|----------|-----------|-------------|
| `_gid`   | Computed  | Global unique identifier across all database terms. Copied to the ArangoDB `_key` field before saving. |
| `_lid`   | Yes       | Local identifier within the term's namespace. Regex: `^[a-zA-Z0-9\-:.@+,=;$!*'%()]{1,254}$` |
| `_nid`   | No        | Namespace of the term. Its value is the `_gid` of the term that represents the namespace. |

- **`_gid`**: The global unique identifier of the term, shared by no other term in the database. It is computed as the concatenation of `_nid` and `_lid` separated by the hardcoded underscore `_` separator. Before saving the term, `_gid` is copied to the top-level `_key` field (the ArangoDB primary key), enforcing uniqueness.
- **`_lid`**: The local identifier of the term within its namespace. Required on all terms.
- **`_nid`**: The term's namespace, used to disambiguate terms that share the same `_lid`. Optional.

#### `_gid` computation rules

The underscore `_` is the hardcoded separator between namespace and local identifier.

| `_nid` value          | `_gid` formula         | Example                                    |
|-----------------------|------------------------|--------------------------------------------|
| Present and non-empty | `_nid` + `_` + `_lid` | `ISO_3166` + `_` + `ITA` → `ISO_3166_ITA` |
| Empty string `""`     | `_` + `_lid`           | `""` + `_` + `code` → `_code`             |
| Omitted               | `_lid`                 | `ISO`                                      |

**Example 1 — standard namespaced term** (`_nid` present and non-empty):

`ISO_3166_ITA` is the ISO 3166 3-character country code for Italy. `ITA` is the `_lid`, `ISO_3166` is the namespace. The namespace `ISO_3166` is itself a term whose `_nid` is `ISO` and `_lid` is `3166`, demonstrating how namespaces form chains from general to specific.

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

When `_nid` is an empty string, the term is a **core building block of the data dictionary itself**. This is the exception to the rule that all namespaces must refer to an existing term. The leading underscore in the resulting `_gid` distinguishes these structural terms from terms describing external data (e.g., `_code`, `_info`, `_data`, `_rule`). Note that the `_code` term itself has a `_code` section — the dictionary is self-describing.

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

When `_nid` is absent, the term defines a top-level namespace with no parent. For example, `ISO` defines the International Standards Organisation namespace.

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
| `_aid`    | Required, Computed | "All identifiers" — the set of official identifiers for the term. Computed: defaults to `[_lid]` if absent. Not immutable — grows when aliases are added. |
| `_pid`    | No       | "Provided identifiers" — custom identifiers used by data providers. |
| `_name`   | No       | A string containing the name of the term. |
| `_symbol` | No       | A formatted string containing the symbol of the term (e.g., a currency symbol, mathematical expression). |
| `_regexp` | No       | A regular expression used to validate the `_lid` of this term. |
| `_emoji`  | No       | An emoji character used as a visual icon for the term. |

- **`_aid`** ("all identifiers"): The set of all *official* identifiers by which the term can be identified — i.e., identifiers that are considered standards beyond this dictionary. This property is **required** and **computed**: `_lid` is a public identifier for the dictionary, so if `_aid` is absent when a term is created or modified, the system initialises it to `[_lid]`. It is not immutable — when alias terms point to this term, their `_lid` values are appended. When a term has additional standard identifiers (e.g. an ISO code), those are also included. Provider-specific or ad hoc identifiers belong in `_pid` instead.
- **`_pid`** ("provided identifiers"): Custom identifiers used by data providers. This dictionary is used to apply standards and metadata to a repository of datasets. When receiving datasets that lack metadata, this field can be searched to match unknown variable names to known terms.
- **`_name`**: The term's name. Used when a term has an official or unique human-readable name distinct from its identifier.
- **`_symbol`**: The term's symbol, stored as a **LaTeX string**. LaTeX is a superset of plain UTF-8 text, so simple symbols can be stored as plain Unicode characters (e.g., `€`, `μ`, `°C`) while complex expressions use LaTeX syntax (e.g., `\bar{x} \pm \sigma`, `\frac{n!}{k!(n-k)!}`). The frontend renders this field using **KaTeX**, which handles both plain Unicode and LaTeX syntax seamlessly.
- **`_regexp`**: A regular expression that validates the `_lid` of this term. When present, the term's own `_lid` must satisfy the expression. It serves as a format constraint on the local identifier and has no relation to namespacing. The same `_regexp` property is also used in the `_data` section to validate string values.
- **`_emoji`**: An emoji character used as a visual icon for the term. For example, ISO 3166 country terms may carry their national flag emoji (e.g., 🇮🇹 for Italy, 🇫🇷 for France).

### `_info` Section

The `_info` section contains human-oriented information about the term: what it represents, how and why it is used, external references, and display text for forms and reports. All properties in this section are **multilingual**: each property's value is a key/value object where the key is the `_gid` of a language term and the value is a string.

```json
{
    "_info": {
        "_title": {
            "ISO_639_3_eng": "Title",
            "ISO_639_3_ita": "Titolo",
            "ISO_639_3_fra": "Titre"
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

- **`_title`**: The name, title or label of the term — the label used when displaying an input form in which the term represents a variable. Should be short, specific, and no more than one sentence, usually without punctuation.
- **`_definition`**: The definition of the term. Should provide the minimum summary necessary for an informed audience to understand what the term represents, in two or three sentences.
- **`_description`**: Full description aimed at a non-expert audience. Should explain what the term is, how it is used, why it is used, and provide links to external documentation for those who want more detail. Expressed as a **Markdown or HTML string** to allow links and images. Required except in rare cases where the definition alone is sufficient to explain the term beyond any conceivable doubt.

#### Secondary properties

| Property     | Required | Value type                    | Description |
|--------------|----------|-------------------------------|-------------|
| `_examples`  | No       | Markdown/HTML string          | Usage examples. |
| `_notes`     | No       | Markdown/HTML string          | Notes, comments and curator feedback. |
| `_url`       | No       | Array of Markdown/HTML strings| Internet references. |
| `_citation`  | No       | Array of Markdown/HTML strings| Citations required when using the term. |
| `_provider`  | No       | Array of Markdown/HTML strings| Contact information for metadata curators. |
| `_methods`   | No       | Markdown/HTML string          | Measurement conditions and methods associated with the descriptor. |

- **`_examples`**: Samples of the term's usage, helping users understand how the term or its value can be used. Expressed as a Markdown/HTML string (same format as `_description`).
- **`_notes`**: Additional information that does not belong in other properties. Acts as a scrapbook for the metadata curator. Expressed as a Markdown/HTML string.
- **`_url`**: A set of internet references linking to external information. Each entry is a Markdown or HTML string.
- **`_citation`**: A set of citations that must be referenced when using the term. Each entry is a Markdown or HTML string.
- **`_provider`**: Contact information for the curators responsible for the term's metadata. Each entry is a Markdown or HTML string.
- **`_methods`**: Measurement conditions and methods associated with the descriptor. Used to distinguish apparently similar variables that must be treated as distinct because they are produced by different measurement protocols or under different conditions — for example, body weight measured fasted vs. non-fasted, or blood pressure measured at rest vs. after exercise. Expressed as a Markdown/HTML string (same format as `_description`). Relevant primarily for descriptor terms in scientific datasets.

#### Alias terms and omitting `_info`

The `_info` section should be present on all terms, with one exception: **alias terms**.

An alias term is created when two terms share identical content except for their `_code` section. For example, `ISO_639_3_eng` and `ISO_639_1_en` both represent the English language, differing only in their codes (ISO 639-3 vs ISO 639-1). Duplicating the full `_info` content across both terms would be wasteful and would create multiple sources of truth.

In this case, `ISO_639_1_en` is defined as an alias of `ISO_639_3_eng`: it retains only its `_code` section, while `ISO_639_3_eng` holds the full content. When the dictionary resolves `ISO_639_1_en`, it returns `ISO_639_3_eng` instead. This mechanism is described further in the graph section.

### `_data` Section

The `_data` section is used by descriptor terms. It describes and documents the data that the term represents. If the section is an **empty object**, the value of the referenced term can be of any shape and type.

#### Data shape (top-level structure)

The top level of the data description defines the **shape** of the data. Exactly one of the following properties is present:

| Property  | Description |
|-----------|-------------|
| `_scalar` | A single value. |
| `_array`  | An ordered list of values of the same type. |
| `_set`    | An unordered list of *unique* values of the same type. |
| `_tuple`  | An ordered list of values whose data type is defined by position. |
| `_dict`   | A key/value dictionary. The key is defined by a scalar string variant; the value is recursively defined by a `_data` section. |

Each of these properties is described in detail in the subsections below.

#### `_scalar`

`_scalar` is an object property that defines and documents a scalar value. If the object is **empty** (`"_scalar": {}`), the value can be any generic boolean, number, string, or structure.

##### `_scalar` properties

| Property               | Required                        | Description |
|------------------------|---------------------------------|-------------|
| `_type`                | Yes (if `_scalar` not empty)    | The scalar data type. |
| `_kind_number`         | Yes (if `_type` is `_type_number`) | Qualifies the numeric type; a non-empty set of `_kind_number_float` and/or `_kind_number_integer`. |
| `_kind_string`         | No                              | Qualifies the string encoding or format; relevant to `_type_string`. Scalar enumeration element. |
| `_kind_key`            | No                              | Constrains the type of term the key may reference; relevant to `_type_key`. Set of enumeration elements. |
| `_kind_enum`           | No                              | Constrains the controlled vocabulary the enumeration value must belong to; relevant to `_type_enum`. Set of enumeration type `_gid`s. |
| `_kind_object`         | No                              | Constrains the object schema the value must conform to; relevant to `_type_object`. Set of object definition `_gid`s. |
| `_unit`                | No                              | Data unit, expressed as an enumeration element. |
| `_unit-name`           | No                              | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent. |
| `_unit-symbol`         | No                              | Unit symbol, used when `_unit` is absent. |
| `_regexp`              | No                              | Regular expression to validate string values; only valid when `_kind_string` is absent. |
| `_decimals`            | No                              | Number of decimals to display; relevant to `_kind_number_float` only. |
| `_valid-range`         | No                              | Valid numeric range for the value. |
| `_valid-range_string`  | No                              | Valid string range for the value. |
| `_normal-range`        | No                              | Normal numeric range for the value. |
| `_normal-range_string` | No                              | Normal string range for the value. |

##### `_type` enumeration

`_type` is required whenever `_scalar` is not empty. It defines the scalar data type:

| Value                  | Description |
|------------------------|-------------|
| `_type_boolean`        | A true/false boolean value. |
| `_type_number`         | A number; `_kind_number` (set) is required. |
| `_type_string`         | A UTF-8 string; `_kind_string` (scalar) optionally qualifies the format. |
| `_type_key`            | A string representing the `_key` of a document. |
| `_type_handle`         | A string containing the `_id` (`<collection>/<_key>`) of an ArangoDB document. |
| `_type_enum`           | A string representing the `_gid` of an enumeration element. |
| `_type_object`         | An object whose properties must correspond to descriptor term `_gid`s (may be empty). |
| `_type_struct`         | An object with indeterminate properties (may be empty). |
| `_type_timestamp`      | An integer representing a Unix timestamp. |
| `_type_object_GeoJSON` | A GeoJSON object (may **not** be empty). |

---

**`_type_boolean`**

Stored as a native boolean in ArangoDB (`true` or `false`). No other `_scalar` properties are needed.

```json
{
    "_scalar": {
        "_type": "_type_boolean"
    }
}
```

---

**`_type_number`**

A numeric value stored as a double-precision floating-point number. `_kind_number` is **required** and must be a non-empty set:

| `_kind_number` value   | Description | Extra properties |
|------------------------|-------------|------------------|
| `_kind_number_float`   | Floating-point number. | `_decimals` (display precision), `_unit`, `_unit-name`, `_unit-symbol`, `_valid-range`, `_normal-range` |
| `_kind_number_integer` | Integer — no decimal part. | `_unit`, `_unit-name`, `_unit-symbol`, `_valid-range`, `_normal-range` |

When both values are present in `_kind_number`, both floating-point and integer values are accepted.

```json
{
    "_scalar": {
        "_type": "_type_number",
        "_kind_number": ["_kind_number_float"],
        "_unit": "_unit_length_cm",
        "_decimals": 2,
        "_valid-range": {
            "_min-range-inclusive": 5.0,
            "_max-range-exclusive": 7.5
        }
    }
}
```

---

**`_type_string`**

A UTF-8 string. The optional `_kind_string` property specifies the string encoding or format:

| `_kind_string` value      | Description | Extra properties |
|---------------------------|-------------|------------------|
| *(absent)*                | Generic string. | `_regexp`, `_unit`, `_unit-name`, `_unit-symbol`, `_valid-range_string`, `_normal-range_string` |
| `_kind_string_Markdown`   | Markdown text. | — |
| `_kind_string_HTML`       | HTML text. | — |
| `_kind_string_URI`        | Uniform Resource Identifier. | — |
| `_kind_string_HEX`        | Hexadecimal value. | `_unit`, `_unit-name`, `_unit-symbol`, `_valid-range_string`, `_normal-range_string` |
| `_kind_string_SVG`        | SVG image. | — |
| `_kind_string_email`      | Email address. | — |
| `_kind_string_date`       | Date (JSON Schema `date` format). | `_valid-range_string`, `_normal-range_string` |
| `_kind_string_time`       | Time (JSON Schema `time` format). | `_valid-range_string`, `_normal-range_string` |
| `_kind_string_date-time`  | Date-time (JSON Schema `date-time` format). | `_valid-range_string`, `_normal-range_string` |
| `_kind_string_YMD`        | Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD). | `_valid-range_string`, `_normal-range_string` |
| `_kind_string_Hostname`   | Internet hostname. | — |
| `_kind_string_IPv4`       | IPv4 address. | — |
| `_kind_string_IPv6`       | IPv6 address. | — |
| `_kind_string_LaTeX`      | LaTeX expression. LaTeX is a superset of UTF-8: simple symbols use plain Unicode; complex expressions use LaTeX syntax. Rendered with KaTeX. | — |
| `_kind_string_regexp`     | Regular expression. The stored value is itself a regexp; the editing interface provides a testing facility. | — |

`_regexp` is available **only** when `_kind_string` is absent — the data kind is self-defining and a regular expression could contradict it. Note the distinction: `_kind_string_regexp` declares that the stored *value* is a regular expression; `_regexp` holds a validation pattern applied to a generic string value.

```json
{
    "_scalar": {
        "_type": "_type_string",
        "_kind_string": "_kind_string_HEX",
        "_valid-range_string": {
            "_min-range-inclusive_string": "0A",
            "_max-range-exclusive_string": "A5"
        }
    }
}
```

---

**`_type_key`**

A string representing the `_key` of a document. If `_kind_key` is absent, the key can refer to a document in any collection. If `_kind_key` is present, it is a set constraining the key to specific term types:

| `_kind_key` value          | Meaning |
|----------------------------|---------|
| `_kind_key_term`           | The key may reference any term. |
| `_kind_key_term_enum`      | The key must reference an enumeration type — i.e., the root of a controlled vocabulary graph. |
| `_kind_key_term_enum_element` | The key must reference an enumeration element — i.e., a valid choice within a controlled vocabulary. |
| `_kind_key_term_descriptor`| The key must reference a descriptor (has a `_data` section). |
| `_kind_key_term_object`    | The key must reference a term that represents an object definition (has a `_rule` section). |

```json
{
    "_scalar": {
        "_type": "_type_key",
        "_kind_key": ["_kind_key_term"]
    }
}
```

---

**`_type_handle`**

A string representing the `_id` of an ArangoDB document, in the form `<collection name>/<_key>`. No additional `_scalar` properties.

---

**`_type_enum`**

A string representing the `_gid` of an enumeration element. The optional `_kind_enum` property is a set of enumeration root `_gid`s identifying the controlled vocabularies from which the value must be drawn; the value must belong to at least one of the listed roots. When `_kind_enum` is absent, the value may be any enumeration element from any controlled vocabulary.

```json
{
    "_scalar": {
        "_type": "_type_enum",
        "_kind_enum": ["ISO_639_3"]
    }
}
```

---

**`_type_object`**

An object whose properties must correspond to descriptor term `_gid`s. May be empty. The optional `_kind_object` property is a set of `_gid`s of object definition terms; the value must conform to at least one of the listed definitions. When `_kind_object` is absent, the only requirement is that all properties are defined as descriptors in the dictionary.

```json
{
    "_scalar": {
        "_type": "_type_object",
        "_kind_object": ["_range_string"]
    }
}
```

---

**`_type_struct`**

An object with indeterminate properties. May be empty. No other `_scalar` properties are expected.

```json
{
    "_scalar": {
        "_type": "_type_struct"
    }
}
```

---

**`_type_timestamp`**

An integer representing a Unix timestamp — the number of seconds elapsed since 1 January 1970 UTC. May include `_valid-range` and `_normal-range`.

```json
{
    "_scalar": {
        "_type": "_type_timestamp",
        "_valid-range": {
            "_min-range-inclusive": 0
        }
    }
}
```

---

**`_type_object_GeoJSON`**

A GeoJSON object. May **not** be empty. No other `_scalar` properties are expected.

```json
{
    "_scalar": {
        "_type": "_type_object_GeoJSON"
    }
}
```

---

##### Range properties

Two families of range properties exist, serving different purposes:

- **Valid range** (`_valid-range`, `_valid-range_string`): defines the hard boundaries of acceptable values. Any value falling outside a valid range is considered an **error** and must be rejected. For example, a temperature expressed in Kelvin must not be negative, so its valid range would have a lower bound of zero.
- **Normal range** (`_normal-range`, `_normal-range_string`): defines the boundaries of expected or typical values, analogous to a normal distribution. A value outside a normal range is not necessarily wrong, but should be **flagged as an outlier** for review. For example, a human body temperature above 42 °C is physiologically possible but warrants a double-check.

All four range properties share the same structure: each is an object with up to four sub-properties defining the lower and upper bounds of the interval. At most one min-property and one max-property should be present; omitting a bound leaves that end of the interval open.

**Numeric ranges** — used with `_valid-range` and `_normal-range`:

| Property               | Description                       |
|------------------------|-----------------------------------|
| `_min-range-inclusive` | Lower bound, value included (≥). |
| `_min-range-exclusive` | Lower bound, value excluded (>). |
| `_max-range-inclusive` | Upper bound, value included (≤). |
| `_max-range-exclusive` | Upper bound, value excluded (<). |

```json
{
    "_valid-range": {
        "_min-range-inclusive": 0,
        "_max-range-exclusive": 100
    }
}
```

**String ranges** — used with `_valid-range_string` and `_normal-range_string`:

| Property                      | Description                       |
|-------------------------------|-----------------------------------|
| `_min-range-inclusive_string` | Lower bound, value included. |
| `_min-range-exclusive_string` | Lower bound, value excluded. |
| `_max-range-inclusive_string` | Upper bound, value included. |
| `_max-range-exclusive_string` | Upper bound, value excluded. |

```json
{
    "_valid-range_string": {
        "_min-range-inclusive_string": "A",
        "_max-range-exclusive_string": "Z"
    }
}
```

---

#### `_array`

`_array` is an object property that defines and documents an array value — an ordered list of elements of the same type. If the object is **empty** (`"_array": {}`), the array may contain any number of elements of any type.

Arrays are **recursive**: an `_array` may contain other arrays, sets, tuples, or dictionaries as its elements, forming nested structures. The recursion terminates when a `_scalar` leaf node is reached.

##### `_array` properties

`_elements` may always be present. Exactly one shape sub-property must also be present (unless `_array` is empty):

| Property   | Required | Description |
|------------|----------|-------------|
| `_elements`| No       | Minimum and maximum number of elements in the array. |
| `_scalar`  | No*      | Array elements are scalar values of the defined type. |
| `_array`   | No*      | Array elements are themselves arrays (recursive). |
| `_set`     | No*      | Array elements are themselves sets — arrays of unique, comparable elements. |
| `_tuple`   | No*      | Array elements are themselves tuples — ordered lists with positionally-typed elements. |
| `_dict`    | No*      | Array elements are key/value dictionary structures. |

\* Exactly one of `_scalar`, `_array`, `_set`, `_tuple`, or `_dict` must be present when `_array` is not empty.

##### `_elements`

`_elements` constrains the number of items in the array. Both sub-properties are optional; omitting one creates an open interval.

| Property     | Required | Description |
|--------------|----------|-------------|
| `_min-items` | No       | Minimum number of elements (inclusive lower bound). |
| `_max-items` | No       | Maximum number of elements (inclusive upper bound). |

```json
{
    "_array": {
        "_elements": {
            "_min-items": 1,
            "_max-items": 10
        },
        "_scalar": {
            "_type": "_type_string"
        }
    }
}
```

##### Shape sub-properties

---

**`_scalar`**

Array elements are scalar values. The `_scalar` object follows the same rules as documented in the [`_scalar`](#_scalar) section.

```json
{
    "_array": {
        "_elements": {
            "_min-items": 1
        },
        "_scalar": {
            "_type": "_type_number",
            "_unit": "_unit_length_cm"
        }
    }
}
```

---

**`_array`**

Array elements are themselves arrays. The structure is recursive: each nested `_array` follows the same rules as its parent, until a `_scalar` or `_dict` leaf is reached.

```json
{
    "_array": {
        "_array": {
            "_scalar": {
                "_type": "_type_number_integer"
            }
        }
    }
}
```

---

**`_set`**

Array elements are themselves sets — arrays of unique, comparable elements. Unlike `_array`, `_set` is **not** recursive: because uniqueness requires comparability, the element type is constrained to a comparable scalar (via `_set_scalar`, not `_scalar`). See the [`_set`](#_set) section for the full definition.

```json
{
    "_array": {
        "_set": {
            "_set_scalar": {
                "_set_type": "_type_string_enum",
                "_kind": ["ISO_639_3"]
            }
        }
    }
}
```

---

**`_tuple`**

Array elements are themselves tuples — ordered lists with positionally-typed elements. Each element's type is defined by the corresponding position in `_tuple_types`. See the [`_tuple`](#_tuple) section for the full definition.

```json
{
    "_array": {
        "_tuple": {
            "_tuple_types": [
                "ISO_3166_1_a2",
                "chr_body_weight"
            ]
        }
    }
}
```

---

**`_dict`**

Array elements are key/value dictionary structures. The `_dict` property is described in its own subsection. Note that the value side of a `_dict` entry is itself defined by a full `_data` section, making the overall structure equivalently recursive.

---

#### `_set`

`_set` is an object property that defines and documents an array of **unique** elements of the same comparable type. It is structurally similar to `_array`, but because uniqueness requires element comparability, the element type is restricted to comparable scalars and `_set` is **not** recursive. Unlike `_array`, `_set` cannot be empty: `_set_scalar` is always required, because without a declared element type there is no basis for enforcing uniqueness.

##### `_set` properties

| Property      | Required | Description |
|---------------|----------|-------------|
| `_set_scalar` | Yes      | Defines the data type of the set elements. |
| `_elements`   | No       | Minimum and maximum number of elements in the set. Same structure as in `_array`. |

##### `_set_scalar`

`_set_scalar` functions identically to `_scalar`, with one difference: the data type property is named **`_set_type`** instead of `_type`, and its value is restricted to **comparable types** (excluding `_type_struct`, `_type_object`, and `_type_object_GeoJSON`, which are not comparable).

###### `_set_scalar` properties

`_set_scalar` follows the same rules as `_scalar`, with `_set_type` in place of `_type`. The same kind properties apply (`_kind_number`, `_kind_string`, `_kind_key`, `_kind_enum`). The range and unit properties are identical.

| Property               | Required                          | Description |
|------------------------|-----------------------------------|-------------|
| `_set_type`            | Yes                               | The data type of the set element. |
| `_kind_number`         | Yes (if `_set_type` is `_type_number`) | Qualifies the numeric type. |
| `_kind_string`         | No                                | Qualifies the string format; relevant to `_type_string`. |
| `_kind_key`            | No                                | Constrains the term type the key may reference; relevant to `_type_key`. |
| `_kind_enum`           | No                                | Constrains the controlled vocabulary; relevant to `_type_enum`. |
| `_unit`                | No                                | Data unit, expressed as an enumeration element. |
| `_unit-name`           | No                                | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent. |
| `_unit-symbol`         | No                                | Unit symbol, used when `_unit` is absent. |
| `_regexp`              | No                                | Regular expression; only valid when `_kind_string` is absent. |
| `_decimals`            | No                                | Number of decimals to display; relevant to `_kind_number_float` only. |
| `_valid-range`         | No                                | Valid numeric range for the value. |
| `_valid-range_string`  | No                                | Valid string range for the value. |
| `_normal-range`        | No                                | Normal numeric range for the value. |
| `_normal-range_string` | No                                | Normal string range for the value. |

###### `_set_type` enumeration

`_set_type` accepts the same values as `_type` except for non-comparable types:

| Value                  | Description |
|------------------------|-------------|
| `_type_boolean`        | A true/false boolean value. |
| `_type_number`         | A number; `_kind_number` is required. |
| `_type_string`         | A UTF-8 string; `_kind_string` optionally qualifies the format. |
| `_type_key`            | A string representing the `_key` of a document. |
| `_type_handle`         | A string containing the `_id` of an ArangoDB document. |
| `_type_enum`           | A string representing the `_gid` of an enumeration element. |
| `_type_timestamp`      | An integer representing a Unix timestamp. |

`_type_struct`, `_type_object`, and `_type_object_GeoJSON` are excluded because objects are not comparable and cannot be tested for uniqueness.

The sub-properties of each range object (`_valid-range`, `_normal-range`, `_valid-range_string`, `_normal-range_string`) are documented in the [Range properties](#range-properties) subsection of `_scalar`.

```json
{
    "_set": {
        "_elements": {
            "_min-items": 1,
            "_max-items": 5
        },
        "_set_scalar": {
            "_set_type": "_type_enum",
            "_kind_enum": ["ISO_639_3"]
        }
    }
}
```

---

#### `_tuple`

`_tuple` is an object property that defines and documents an ordered list in which each element may have a different data type. Unlike `_array` and `_set`, which apply a single type uniformly to all elements, a tuple is **positional**: the type at index *n* in `_tuple_types` applies to the value at index *n* in the tuple array.

##### `_tuple` properties

| Property       | Required | Description |
|----------------|----------|-------------|
| `_tuple_types` | Yes      | Ordered list of descriptor `_gid`s defining the data type of each tuple position. |
| `_elements`    | No       | Minimum and maximum number of elements the tuple may contain. |

##### `_tuple_types`

`_tuple_types` is an array of descriptor `_gid`s. The type definition for each tuple position is **not written inline**: each entry is the `_gid` of a descriptor term, and it is that term's `_data` section that defines the expected type for the corresponding position. Order is significant: position *n* in `_tuple_types` governs position *n* in the tuple value.

This indirection means that tuple positions reuse existing descriptor definitions from the dictionary rather than duplicating type information. The type of a tuple element is fully resolved by looking up the referenced descriptor and reading its `_data` section.

```json
{
    "_tuple": {
        "_tuple_types": [
            "ISO_3166_1_a2",
            "chr_birth_date",
            "chr_body_weight"
        ]
    }
}
```

##### `_elements`

`_elements` constrains how many elements a tuple value may contain. The length of `_tuple_types` acts as an absolute upper bound: neither `_min-items` nor `_max-items` may exceed it.

- If `_elements` is **omitted**, the tuple must contain exactly as many elements as `_tuple_types`.
- If `_elements` is **present**, the tuple length is governed by its sub-properties.

| Property     | Required | Description |
|--------------|----------|-------------|
| `_min-items` | No       | Minimum number of elements (inclusive). Cannot exceed the length of `_tuple_types`. If omitted, the minimum is zero. |
| `_max-items` | No       | Maximum number of elements (inclusive). Cannot exceed the length of `_tuple_types`. If omitted, the maximum equals the length of `_tuple_types`. |

When the tuple contains fewer elements than `_tuple_types`, the types for the trailing positions are simply not applied — the tuple is treated as a prefix of the full type sequence.

```json
{
    "_tuple": {
        "_tuple_types": [
            "ISO_3166_1_a2",
            "chr_birth_date",
            "chr_body_weight"
        ],
        "_elements": {
            "_min-items": 1,
            "_max-items": 3
        }
    }
}
```

---

#### `_dict`

`_dict` is an object property that defines and documents a key/value structure. Unlike `_type_struct` (indeterminate properties) and `_type_object` (properties are descriptor `_gid`s), a dictionary has **explicitly typed keys and values**: the key type is defined by `_dict_key` and the value type is defined by `_dict_value`. Both properties are required.

##### `_dict` properties

| Property      | Required | Description |
|---------------|----------|-------------|
| `_dict_key`   | Yes      | Defines the data type of the dictionary keys. |
| `_dict_value` | Yes      | Defines the data type of the dictionary values. Equivalent to a full `_data` section. |

##### `_dict_key`

`_dict_key` is a structure that defines the type of the dictionary key. Because dictionary keys must be compatible with object property names, the permitted types are restricted to string-compatible variants. It mirrors the structure of `_scalar` but uses `_type_key` instead of `_type`, and omits non-string types.

###### `_dict_key` properties

| Property      | Required | Description |
|---------------|----------|-------------|
| `_type_key`   | Yes      | The data type of the dictionary key. |
| `_kind_key`   | No       | Constrains the term type the key may reference; relevant to `_type_key`. |
| `_kind_enum`  | No       | Constrains the controlled vocabulary; relevant to `_type_enum`. |
| `_unit`       | No       | Key unit, expressed as an enumeration element. |
| `_unit-name`  | No       | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent. |
| `_unit-symbol`| No       | Unit symbol, used when `_unit` is absent. |
| `_regexp`     | No       | Regular expression to validate the key format; only valid when `_kind_string` is absent. |

###### `_type_key` enumeration

`_type_key` accepts only string-compatible types, as dictionary keys must be valid object property names:

| Value          | Description |
|----------------|-------------|
| `_type_string` | A generic UTF-8 string. |
| `_type_key`    | A string representing the `_key` of a term. |
| `_type_handle` | A string representing the `_id` of an ArangoDB document. |
| `_type_enum`   | A string representing the `_gid` of an enumeration element. |

The semantics of each type, and of the kind properties, are identical to those described in the [`_scalar`](#_scalar) section.

##### `_dict_value`

`_dict_value` is equivalent to a full `_data` section: it may contain exactly one shape property (`_scalar`, `_array`, `_set`, `_tuple`, or `_dict`), making the dictionary structure fully recursive. An empty `_dict_value` object (`"_dict_value": {}`) means the value can be of any shape and type.

```json
{
    "_dict": {
        "_dict_key": {
            "_type_key": "_type_enum",
            "_kind_enum": ["ISO_639_3"]
        },
        "_dict_value": {
            "_scalar": {
                "_type": "_type_string"
            }
        }
    }
}
```

The example above describes the multilingual structure used throughout the `_info` section: keys are ISO 639-3 language `_gid`s (e.g. `ISO_639_3_eng`), values are plain strings.

---

### `_rule` Section

The `_rule` section defines how objects may be composed. It contains a set of rules that determine which properties are required, recommended, forbidden, or automatically managed within an object. Any term carrying a `_rule` section defines an object schema; other terms can reference it via `_type_object` and `_kind` in their `_data` section.

Conditional constraints that apply only when a specific property holds a specific value are expressed in the graph layer using the `_predicate_value-of` predicate — see the Graphs section. The `_rule` section handles structural constraints that apply unconditionally; the graph layer handles value-dependent constraints.

The `_closed` flag controls whether unlisted optional properties are accepted. `_required` and `_recommended` are disjoint tiers of the allowed set — required means allowed and mandatory, recommended means allowed and optional. In a closed schema the allowed set is their union; no property should appear in both. `_banned` is unconditional in both modes.

#### Top-level properties

The following properties may be present. `_closed` is **required** in every rule object; the rest are optional:

| Property        | Required | Description |
|-----------------|----------|-------------|
| `_closed`       | Yes      | Boolean flag. When true, only properties in `_required` or `_recommended` are permitted; any other property is rejected. When false, `_recommended` is advisory. Must be present in every rule object — both base `_rule` sections and `_path_data` conditional rule objects. |
| `_required`     | No       | Defines which properties must be present in the object, expressed using selection structures. Required properties are always permitted and must never appear in `_recommended`. |
| `_recommended`  | No       | The set of optional properties permitted in the object. Disjoint from `_required`. Advisory when `_closed` is false; enforced as a strict additional whitelist when `_closed` is true. |
| `_banned`       | No       | Defines which properties must never be present in the object. Unconditional — takes precedence over all other rules including conditional graph rules. |
| `_computed`     | No       | Properties whose values are automatically set by the system if not provided by the user. |
| `_locked`       | No       | Properties whose values are entirely managed by the system and cannot be set or modified by users. |
| `_immutable`    | No       | Properties that, once set, cannot be modified or deleted. |
| `_default-value`| No       | Key/value dictionary mapping properties to their default values, applied at insertion time. |

#### Selection structures

`_required` expresses its conditions using **selection structures** — properties that specify which descriptors must be present according to a particular cardinality rule. The first four selectors take a **flat set of descriptor keys** as their value. The last two take an **array of sets**, applying a two-phase rule: from each set exactly one element is the valid form, and the second phase governs how many sets must contribute.

| Property                             | Value shape          | Description |
|--------------------------------------|----------------------|-------------|
| `_selection-descriptors_one`         | Set of descriptor keys | **One of**: exactly one descriptor from the set must be present; the rest must be absent. |
| `_selection-descriptors_one-none`    | Set of descriptor keys | **One or none**: zero or one descriptor from the set may be present. |
| `_selection-descriptors_any`         | Set of descriptor keys | **Any of**: one or more descriptors from the set must be present. |
| `_selection-descriptors_all`         | Set of descriptor keys | **All of**: all descriptors from the set must be present. |
| `_selection-descriptors_one-of-any`  | Array of sets of descriptor keys | **One of each, any result**: from each set, at most one element may be present (mutual exclusion); at least one set must contribute an element. |
| `_selection-descriptors_one-of-all`  | Array of sets of descriptor keys | **One of each, all results**: from each set, exactly one element must be present (mutual exclusion); every set must contribute an element. |

The two grouped selectors apply a two-phase evaluation. For `_selection-descriptors_one-of-any`, the classic use case is a range object where each bound type has exactly one valid form and at least one bound is required:

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_one-of-any": [
                ["_min-range-inclusive", "_min-range-exclusive"],
                ["_max-range-inclusive", "_max-range-exclusive"]
            ]
        }
    }
}
```

From the first set, at most one lower-bound form may be present. From the second set, at most one upper-bound form may be present. At least one bound overall must be present. Use `_selection-descriptors_one-of-all` instead when all sets must contribute — for example, a range that requires both a lower and an upper bound.

#### `_required`

`_required` is an object that must contain **at least one** selection structure. It may contain any combination of the six selectors, but at least one must be present — an empty `_required` object is invalid. When multiple selectors are present, **all of them must be satisfied simultaneously**: the selectors are ANDed together, not ORed. Note that `_default-value` is applied before `_required` is checked, so a property with a default value will always satisfy a requirement for it.

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_one": ["one", "two", "three"],
            "_selection-descriptors_any": ["red", "green", "blue"],
            "_selection-descriptors_all": ["mon", "tue", "wed"]
        }
    }
}
```

This rule imposes the following conditions:

- Exactly one of `one`, `two`, `three` must be present; the others must be absent.
- At least one of `red`, `green`, `blue` must be present.
- All of `mon`, `tue`, `wed` must be present.

#### `_banned`

`_banned` is an array of descriptor references. If any of the listed descriptors are present in the object, the object is considered invalid. `_banned` is **unconditional and absolute**: it takes precedence over all other rules, including graph-based conditional rules. No `_predicate_value-of` edge can activate a property that `_banned` prohibits. If a conditional rule's `_path_data` requires a banned property, that is a **conflict** — detectable at edge insertion time, not at data validation time.

```json
{
    "_rule": {
        "_banned": ["one", "two", "three"]
    }
}
```

This rule indicates that the object must never contain any of the properties `one`, `two`, or `three`, regardless of any conditional rules that may otherwise apply.

#### `_closed`

`_closed` is a **required** boolean present in every rule object — both base `_rule` sections and conditional rule objects stored in `_path_data`. Its explicit presence eliminates ambiguity about a schema's closure state without needing to trace the rule hierarchy.

- **`_closed: false`** (open schema): properties outside `_required` and `_recommended` are accepted. Advisory — used for schemas that are still evolving or where extensibility is desired.
- **`_closed: true`** (closed schema): only properties in `_required` or `_recommended` may be present; any other property causes a validation error.

For **conditional rule objects** in `_path_data` (attached to `_predicate_value-of` edges):

- A **closed** conditional rule (`_closed: true`) **replaces** the base `_recommended` set entirely — its `_recommended` becomes the complete whitelist for that value context.
- An **open** conditional rule (`_closed: false`) **accumulates** — its `_recommended` is unioned with the base, and any `_banned` entries conditionally remove properties from the effective permitted set.

`_required` always accumulates (AND logic) regardless of the closure mode. `_banned` is unconditional and absolute in all modes.

#### `_recommended`

`_recommended` is an array of descriptor references listing the properties that are permitted in the structure. Its effect depends on `_closed`:

- **`_closed: false`**: `_recommended` is advisory — it documents the expected optional properties for form generation and display, but does not reject unlisted properties.
- **`_closed: true`**: `_recommended` is enforced — only properties in `_required` or `_recommended` may be present; any other property is rejected.

`_required` and `_recommended` are disjoint: a property appears in exactly one or neither. `_banned` is unconditional and applies regardless of the other lists. When `_recommended` is absent, all non-banned, non-required properties are permitted regardless of `_closed`.

```json
{
    "_rule": {
        "_closed": true,
        "_recommended": ["_type", "_kind", "_format", "_unit", "_unit-name", "_unit-symbol", "_regexp", "_decimals", "_valid-range", "_normal-range"]
    }
}
```

Conditional rules (via `_predicate_value-of` graph edges) may supplement `_recommended` for specific value contexts. An open conditional rule adds to or restricts the effective permitted set; a closed conditional rule replaces it entirely. Neither can lift a `_banned` constraint.

#### `_computed`

`_computed` is an array of descriptor references whose values are automatically set by the system if not explicitly provided by the user. Computed properties are resolved before `_required` is checked — this means a property can be both listed in `_computed` and required: the system sets the value first, and validation then confirms its presence. A computed property is typically paired with `_immutable` to prevent modification after the system sets it.

```json
{
    "_rule": {
        "_computed": ["_key"],
        "_immutable": ["_key"]
    }
}
```

This rule indicates that `_key` is set by the system if absent, and cannot be modified once set.

#### `_locked`

`_locked` is an array of descriptor references whose values are entirely managed by the system. Unlike `_computed` properties — where the user may optionally supply the value — locked properties are fully opaque to users and cannot be set or modified by them.

```json
{
    "_rule": {
        "_computed": ["_id"],
        "_locked": ["_id"]
    }
}
```

This rule indicates that `_id` is computed and set exclusively by the system.

#### `_immutable`

`_immutable` is an array of descriptor references whose values, once set — whether by the user or by the system — cannot be modified or deleted.

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_all": ["_lid"]
        },
        "_immutable": ["_lid"]
    }
}
```

This rule indicates that `_lid` is required and, once set, is permanent.

#### `_default-value`

`_default-value` is a key/value dictionary where each key is a descriptor `_gid` and each value is the default to be applied if that property is absent at insertion time. Defaults are applied **before** `_required` is checked — this means a property can be both listed in `_default-value` and required: if the user omits it, the default fills it in, and validation then succeeds. This makes `_default-value` a way to guarantee required properties are always present without forcing the user to supply them explicitly.

```json
{
    "_rule": {
        "_default-value": {
            "chr_status": "active",
            "chr_confidence": 1.0
        }
    }
}
```

---

### Graphs

Graphs are implemented using ArangoDB **edge collection** documents. Each edge document describes a directed relationship between two nodes (terms or other documents) and belongs to one or more named graphs.

#### Edge Document Structure

##### Built-in ArangoDB properties

| Property | Type                  | Required | Description |
|----------|-----------------------|----------|-------------|
| `_from`  | `_type_handle` | Yes      | Document handle of the relationship **source** node. |
| `_to`    | `_type_handle` | Yes      | Document handle of the relationship **destination** node. |

##### Custom edge properties

| Property     | Type                             | Required | Default | Description |
|--------------|----------------------------------|----------|---------|-------------|
| `_predicate` | `_type_string_enum`              | Yes      | —       | The relationship predicate; qualifies the kind of relationship between `_from` and `_to`. |
| `_path`      | Set of `_type_handle`     | Yes      | —       | The set of graph root handles whose traversal passes through this edge. |
| `_path_data` | Open dictionary (`_type_struct`) | Yes      | `{}`    | Data associated with the edge, scoped by path or node context. |

#### Edge Uniqueness and Key Computation

No two edges may share the same `_from`/`_predicate`/`_to` combination. The `_key` of an edge document is computed as the **MD5 hash** of the concatenation `_from + "/" + _predicate + "/" + _to`.

This uniqueness constraint is the foundation of the `_path` mechanism: when multiple graphs share the same directed relationship (same source, same predicate, same destination), they do not create separate edge documents — they share a single edge, and each graph's root handle is added to the `_path` set.

#### The `_path` Property

`_path` is a set of document handles, each identifying a graph by its **root node**. A graph is defined by its root: all edges reachable from that root, following edges whose `_path` contains the root handle, form the graph.

Filtering edges by a value present in `_path` isolates the edges belonging to a specific graph. Combined with database indexing, this enables efficient traversal and element lookup within any named graph without creating redundant edge documents.

#### The `_path_data` Property

`_path_data` is an open dictionary (`_type_struct`) that associates data with the edge, scoped by context. Keys are document handles or descriptor `_gid`s:

| Key pattern                      | Meaning |
|----------------------------------|---------|
| Graph root handle (from `_path`) | Data specific to this edge **within that graph** (e.g. cost, duration, weight for a particular traversal path). |
| `_from` or `_to` handle          | Data related to a **node** at one end of the relationship, independent of which graph is traversed. |
| Descriptor `_gid`                | General-purpose data associated with the edge as a whole. |

`_path_data` is initialised to an empty dictionary `{}` at insertion. Its open structure allows any graph-specific or edge-specific data to be attached without schema changes.

```json
{
    "_key": "<edge hash>",
    "_from": "locations/Roma",
    "_predicate": "_predicate_travel-to",
    "_to": "locations/Milano",
    "_path": ["airlines/airline-A", "airlines/airline-B"],
    "_path_data": {
        "airlines/airline-A": {
            "price": 150,
            "duration": 75
        },
        "airlines/airline-B": {
            "price": 200,
            "duration": 45
        },
        "locations/Roma": {
            "taxi": 70,
            "duration": 45
        },
        "locations/Milano": {
            "taxi": 90,
            "duration": 30
        },
        "passengers": 1247
    }
}
```

In this example, two airline graphs share the Rome → Milan edge. `_path_data` contains price/duration data scoped to each airline, taxi data scoped to the departure and arrival cities, and a general `passengers` count attached to the edge itself.

#### Predicates

The predicate (`_predicate`) qualifies the nature of the relationship. All predicates are enumeration terms in the dictionary. They fall into two categories: **functional** (carry domain meaning; followed during traversal) and **non-functional** (structural aids that modify traversal behaviour).

All predicates follow a **many-to-one direction**: `_from` is the leaf (child, member, element) and `_to` is the root (parent, container, category).

##### Functional Predicates

Functional predicates carry domain meaning and are followed during graph traversal and element lookup.

| Predicate                | Description |
|--------------------------|-------------|
| `_predicate_enum-of`     | `_from` is a valid enumeration element of the `_to` controlled vocabulary. |
| `_predicate_property-of` | `_from` descriptor is a property of the `_to` schema term. Used to link descriptors to object definitions. |
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

Italy (`terms/ISO_3166_3_ITA`) is declared a valid enumeration element of the ISO 3166-3 country vocabulary (`terms/ISO_3166_3`).

##### Non-Functional Predicates

Non-functional predicates are structural aids. They do not carry domain meaning and are either skipped or handled specially during traversal.

| Predicate               | Description |
|-------------------------|-------------|
| `_predicate_section-of` | `_from` is a **section** (disclosure group) within the `_to` graph. Sections are skipped during validation traversal but used as grouping headers during display. |
| `_predicate_bridge-of`  | `_from` is a **bridge** pointing into another graph. The bridge node is skipped during traversal; the traversal continues into the referenced graph's elements via the `_path` mechanism. |

---

**Sections**

A section groups elements within a graph under a named heading. During functional traversal (validation, lookup), sections are ignored; during display, they serve as collapsible groups.

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

Italy is an element of the `EUROPE` section; `EUROPE` is a section of the `ISO_3166_3` graph. When validating a value, sections are ignored and only `_predicate_enum-of` edges are followed. When displaying the vocabulary, countries are grouped by region.

> **Note:** Enumerations in this dictionary are **hierarchical**. If `_predicate_section-of` were replaced by `_predicate_enum-of`, then `EUROPE` itself would become a valid selectable value alongside its member elements. Both patterns are valid; the choice determines whether intermediate grouping nodes are selectable.

---

**Bridge graphs**

A bridge allows a custom graph to include a subset of elements from an existing complete graph, without duplicating edge documents. The bridge node points to the complete graph with `_predicate_bridge-of`; individual elements are shared by adding the custom graph root to their `_path` set.

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

`terms/MyCountries` is a custom vocabulary. Edge B connects `MyCountries` to the complete `ISO_3166_3` graph via a bridge. Edge A (which already existed for `ISO_3166_3`) gains `MyCountries` in its `_path`. When traversing `MyCountries`, the bridge node (`ISO_3166_3`) is skipped; Italy is found directly through edge A.

Additional custom vocabularies can share the same elements by each adding their root to the `_path` set of the relevant edges. A second vocabulary `YourCountries` that also includes Italy adds `terms/YourCountries` to edge A's `_path` and creates its own bridge edge (edge C):

```json
{
    "_key": "<edge A>",
    "_from": "terms/ISO_3166_3_ITA",
    "_predicate": "_predicate_enum-of",
    "_to": "terms/ISO_3166_3",
    "_path": ["terms/ISO_3166_3", "terms/MyCountries", "terms/YourCountries"],
    "_path_data": {}
},
{
    "_key": "<edge B>",
    "_from": "terms/ISO_3166_3",
    "_predicate": "_predicate_bridge-of",
    "_to": "terms/MyCountries",
    "_path": ["terms/MyCountries"],
    "_path_data": {}
},
{
    "_key": "<edge C>",
    "_from": "terms/ISO_3166_3",
    "_predicate": "_predicate_bridge-of",
    "_to": "terms/YourCountries",
    "_path": ["terms/YourCountries"],
    "_path_data": {}
}
```

For large enumerations with many custom subsets, this sharing mechanism avoids duplicating edge documents: each element edge exists once, carrying all applicable graph roots in its `_path` set.

---

**Alias resolution**

An alias term carries no content of its own (no `_info`, no `_data`) and acts as an alternative identifier for a canonical term. The alias mechanism reuses the existing `_predicate_bridge-of` and `_predicate_enum-of` predicates — no additional predicate is required.

Example: `ISO_639_1_en` (ISO 639-1 code for English) is an alias for `ISO_639_3_eng` (ISO 639-3 code for English). Both represent the same language; only the coding standard differs.

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

The two edges implement the alias:

- **Edge B** connects the alias node (`ISO_639_1_en`) to the `ISO_639_1` graph root with `_predicate_bridge-of`. This marks `ISO_639_1_en` as a bridge: it is to be skipped during traversal, not treated as a valid value.
- **Edge A** connects the canonical node (`ISO_639_3_eng`) to the alias node with `_predicate_enum-of`. This declares `ISO_639_3_eng` as the valid enumeration element within the `ISO_639_1` graph, reachable through `ISO_639_1_en`.

When traversing the `ISO_639_1` graph outward from the root (one-to-many direction):

1. Start at root `terms/ISO_639_1`. Follow edge B reversed: reach `terms/ISO_639_1_en` via `_predicate_bridge-of` → **skip** (bridge node).
2. Follow edge A reversed: reach `terms/ISO_639_3_eng` via `_predicate_enum-of` → **valid element; return this term**.

To resolve an alias directly (without full traversal):

1. Look up edges where `_to = terms/ISO_639_1_en` AND `_predicate = _predicate_enum-of`.
2. The `_from` of that edge (`terms/ISO_639_3_eng`) is the canonical term.

> **Note:** `ISO_639_3_eng` remains a member of its own native graph (`ISO_639_3`) via a separate, independent edge. The alias edges are scoped to the `ISO_639_1` graph and do not affect the `ISO_639_3` graph. The same canonical term may appear in multiple graphs simultaneously through separate edge sets.

---

**Conditional rules**

Conditional rules express constraints that activate only when a specific property holds a specific value within a specific structural context. They use a dedicated predicate, `_predicate_value-of`, and store the activated rules in `_path_data`.

| Predicate               | Description |
|-------------------------|-------------|
| `_predicate_value-of`   | `_from` is a possible value of the property `_to`. When `_to` holds value `_from` within the structural context identified by `_path`, the rules in `_path_data[path_root]` apply. |

The edge encodes: **what** (the value, in `_from`), **of which property** (in `_to`), **in which structural context** (in `_path`), **with what consequences** (in `_path_data[path_root]`).

```json
{
    "_key": "<edge hash>",
    "_from": "terms/_type_string_enum",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_required": {
                "_selection-descriptors_any": ["_kind"]
            }
        }
    }
}
```

This edge states: within a `_scalar` structure, when `_type` holds the value `_type_string_enum`, the property `_kind` becomes required.

`_from` (`_type_string_enum`) is already part of the edge's primary key (`_from`/`_predicate`/`_to`), so it is not repeated as a `_path_data` key. The `_path_data` key is the path root handle (`terms/_scalar`), which identifies the structural context — consistent with how `_path_data` is keyed throughout the graph model.

**Context sensitivity**: the same value can produce different consequences in different structural contexts. A `_predicate_value-of` edge for `_type_string_enum` within `_scalar` (path root `terms/_scalar`) is a separate edge from one within `_set_scalar` (path root `terms/_set_scalar`). Each carries its own `_path_data` with context-appropriate rules.

**Precedence**: conditional rules can only add constraints — they may make previously optional properties required, or expand the recommended set. They cannot remove a `_banned` constraint or override structural-level `_rule` properties. If a conditional rule's `_path_data` requires a property listed in the structure's `_rule._banned`, this is a conflict detectable at edge insertion time.

#### Graph Traversal

Traversal always moves in the **many-to-one direction** (leaf → root). The governing rule is: follow edges where `_path` contains the target graph root handle, filtered by the predicate type appropriate to the current operation.

| Operation          | Predicates followed                                    | Predicates skipped          |
|--------------------|--------------------------------------------------------|-----------------------------|
| Element validation | `_predicate_enum-of`                                   | `_predicate_section-of`     |
| Display (tree)     | `_predicate_enum-of`, `_predicate_section-of`          | —                           |
| Bridge resolution  | `_predicate_bridge-of` (then switch `_path` context)   | —                           |

**Finding an element in a graph (example — is Italy in `ISO_3166_3`?):**

1. Filter edges where `_path` contains `terms/ISO_3166_3` AND `_predicate` is `_predicate_enum-of`.
2. If any edge has `_from = terms/ISO_3166_3_ITA`, the element is found.
3. If a bridge edge is encountered (`_predicate_bridge-of`), switch the `_path` filter to the referenced graph root and continue traversal there.

**Finding an element in a bridge graph (example — is Italy in `MyCountries`?):**

1. Find the edge with `_to = terms/MyCountries` and `_path` containing `terms/MyCountries`. This is the bridge edge (edge B above).
2. `_from` of the bridge edge is `terms/ISO_3166_3`. Switch the traversal context: now filter edges where `_path` contains `terms/MyCountries` AND `_predicate` is `_predicate_enum-of`.
3. Edge A satisfies both conditions and has `_from = terms/ISO_3166_3_ITA`. Italy is found.
