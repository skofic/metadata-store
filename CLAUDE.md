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
- `_data` section — all six shapes (`_scalar`, `_array`, `_set`, `_tuple`, `_dict`, `_type`), all `_type` variants, range properties, typedef mechanism
- `_rule` section — all properties (`_required`, `_recommended`, `_banned`, `_computed`, `_locked`, `_immutable`, `_default-value`), selection structures, open/closed schema design, `_banned` precedence
- Graphs section — edge structure, `_path`/`_path_data`, functional and non-functional predicates, sections, bridge graphs, alias resolution, `_predicate_value-of` conditional rules, traversal semantics

### In Progress
- Nothing currently in progress.

### Pending
- **All TSV tables completed.** Next task: review the complete set of JSON files for consistency, then proceed to Phase 3 (Standards) or Phase 5 (Edge relationships).
- Completed TSV → JSON: `_term.tsv`, `_code.tsv`, `_info.tsv`, `_data.tsv` (40 terms), `_type.tsv` (55 terms), `_rule.tsv` (15 terms), `_predicates.tsv` (13 terms).
- Completed: `_term.tsv` → `data/core/_term.json`; `_code.tsv` → `data/core/_code.json`; `_info.tsv` → `data/core/_info.json`; `_data.tsv` → `data/core/_data.json` (40 terms); `_type.tsv` → `data/core/_type.json` (55 terms).
- **Open design questions** (still to be resolved):
  1. **Modification cost**: removing or renaming a term that acts as a property in a graph-based schema requires updating all edges referencing it and potentially cascading changes through dependent schemas. The cost and tooling implications of this need to be analysed before committing to the graph-based approach.
  2. **Conflict detection**: a concrete starting point exists (checking `_path_data` conditional rules against `_rule._banned`), but a general mechanism for detecting and reporting all contradictory rules needs to be designed.
  3. **UI rendering hints (`_display` section)**: `_rule` is about data validity, not presentation. A dedicated `_display` section should carry explicit rendering hints so UI developers do not need to reverse-engineer widget choices from schema semantics. The `_rule` selection structures are a useful secondary signal (e.g. `_type_selection_optional` + `_max-items: 1` on seven shapes implies a popup with a `<none>` option), but they are not a substitute for explicit guidance. The `_display` section should cover at minimum: widget type (popup, radio group, checkbox list, text input, numeric stepper, etc.), display order within a form group, field grouping, conditional visibility (parallel to `_predicate_value-of` but for display), and read-only hints (mirroring `_locked`/`_immutable`). When both are present, `_display` takes precedence; `_rule` semantics serve as a machine-readable fallback. This is a future phase — design and term authoring deferred until the core dictionary structure is stable.

### Recent session (2026-03-30, continued)
- Created `data/core/_predicates.json` from `_predicates.tsv`: 13 terms with term cards in `terms/`.
- Terms: four grouping/sub-root nodes (`_predicate_functional`, `_predicate_structural`, `_predicate_section`, `_predicate_bridge`) — each marked `_type_term_enum-root`; nine predicate terms marked `_type_term_predicate`.
- Structural predicates (`_predicate_required-by`, `_predicate_banned-by`, `_predicate_recommended-by`) documented as **reserved for future dataset validation use** — not used in the core dictionary's own graph, which uses `_path_data` + `_rule` for all schema constraints.
- Updated `term-index.json` with all 13 new entries (previously only 6 predicates were listed).
- All seven TSV tables are now converted to JSON. Phase 2 core terms are complete.

### Recent session (2026-03-30)
- Created `data/core/_rule.json` from `_rule.tsv`: 15 terms with term cards in `terms/`.
- Terms: `_rule`, `_required`, `_recommended`, `_banned`, `_computed`, `_immutable`, `_locked`, `_default-value`, `_closed` (top-level descriptors); `_selection` (namespace); `_rule_selector` (sub-term of `_rule`, DESCRIPTOR + OBJECT DEFINITION); `_selection_rules`, `_selection_rule`, `_selection_type`, `_selection_descriptors` (sub-terms of `_selection`).
- Key design points: `_closed` is always required (mandatory `_selection_type`); `_required` is an array of `_rule_selector` objects; `_selection_descriptors` uses `_nested` shape with `_comparable_type: "_type_key_term_descriptor"` leaf type; `_default-value` uses `_dict` with `_dict_key_type: "_type_key_term_descriptor"` and open `_dict_value`.
- Updated `term-index.json`: removed stale `_selection_object` entry; added `_rule`, `_selection`, `_rule_selector`, `_selection_rule`; fixed `containers.json` pointers (`_term`, `_edge`, `_prop`, `_domn`, `_term_type` → `_term.json`; `_code` → `_code.json`; `_info` → `_info.json`; `_rule` → `_rule.json`); fixed `database.json` pointers (`_id`, `_key`, `_rev`, `_from`, `_to` → `_term.json`); fixed `_predicate`, `_path`, `_path_data` → `_term.json`.

### Recent session (2026-03-29, continued 4)
- Fixed all unlinked `` `_gid` `` references in `_description` fields across all current (non-`old/`) files.
- Rule applied: first occurrence of `` `_gid` `` as backtick text in each `_description` is linked as `` [`_gid`](_gid.md) ``; second-or-later occurrences, `_definition` fields, `_examples` fields, and the `_gid` term's own description are left as plain backtick text.
- Files updated: `data/core/_code.json`, `data/core/_term.json`, `data/core/_data.json`; term cards `_scalar.md`, `_code.md`, `_predicate.md`, `_key.md`. All term cards for `_tuple_type`, `_dict`, `_typedef`, `_enum_types`, `_object_types`, `_unit`, `_unit-name` already had the link; their JSON counterparts were updated to match.

### Recent session (2026-03-29, continued 3)
- Created `data/core/_type.json` from `_type.tsv`: 55 terms with term cards in `terms/`.
- Terms cover: `_type` namespace; `_type_data` / `_type_data_comparable` / `_type_data_dict_key` enumeration roots and their sub-sets; all scalar data type enum items (`_type_boolean`, `_type_number*`, `_type_string*`, `_type_regexp`, `_type_key*`, `_type_handle`, `_type_enum`, `_type_struct`, `_type_object*`, `_type_timestamp`); section/grouping nodes (`_type_string_formatted`, `_type_string_internet`, `_type_string_timestamp`, `_type_string_encoded`, `_type_data_dict`); `_type_term` enumeration root and all 8 term-type values; `_type_selection` root and 2 selection-type values.
- Corrected `_rule` for `_elements`, `_range`, and `_range_string`: `_elements` now uses `_required` with `_type_selection_optional` + `_min-items: 1`; `_range` and `_range_string` now use nested `_selection_descriptors` with two rules (`_type_selection_mandatory` max-1 for mutual exclusion + `_type_selection_optional` min-1 for at-least-one-bound). Updated definitions and descriptions to match.
- Added two missing entries to `term-index.json`: `_type` and `_type_data_dict`.

### Recent session (2026-03-29, continued 2)
- Added Markdown links to all unlinked term references in `_description` sections of 13 newly created term cards: `_enum`, `_enum_types`, `_object`, `_object_types`, `_unit`, `_unit-name`, `_decimals`, `_tuple`, `_tuple_type`, `_dict`, `_dict_key`, `_dict_key_type`, `_typedef`.
- Rule applied: only the first occurrence of each term reference in a `_description` is linked; self-references and second-or-later occurrences remain as plain backtick text.

### Recent session (2026-03-29, continued)
- Created `data/core/_info.json` from `_info.tsv`: 13 terms (`_info`, `_info_string`, `_info_string_formatted`, `_title`, `_definition`, `_description`, `_methods`, `_usage`, `_examples`, `_citation`, `_provider`, `_url`, `_notes`), with term cards in `terms/`.
- `_typedef` confirmed as the property name for typedef references in `_data` (renamed from `_type` in the March 2026 redesign).
- `_info_string` and `_info_string_formatted` have no `_rule` section: `_rule` applies only to `_type_object` schemas; dict typedef terms are fully defined by their `_data._dict` structure.
- `_usage` is a new term (not in old file): formatted text, same structure as `_description`.

### Recent session (2026-03-29)
- Created `data/core/_term.json` from `_term.tsv`: 13 terms (`_term`, `_edge`, `_id`, `_key`, `_rev`, `_from`, `_to`, `_predicate`, `_path`, `_path_data`, `_prop`, `_domn`, `_term_type`), with term cards in `terms/`.
- Created `data/core/_code.json` from `_code.tsv`: 10 terms (`_code`, `_nid`, `_lid`, `_gid`, `_aid`, `_pid`, `_name`, `_symbol`, `_emoji`, `_regexp`), with term cards in `terms/`.
- All terms use updated naming conventions: `_scalar_type`, `_comparable`/`_comparable_type`, `_object_types`, `_enum_types`, `_type_regexp`, new `_required` selection structure.
- `_term_type` description uses labelled links `[**Alias**](_type_term_alias.md)`, etc.
- `_regexp` data type confirmed as `_type_regexp`.
- `_gid` data type confirmed as `_type_string` (with regexp), not `_type_key_term`.
- `_nid` data type confirmed as `_type_key_term` (empty-string special case documented in description).

### Recent session (2026-03-28)
- Major namespace redesign completed across all TSV tables. Key changes:
  - Dropped `_data_` prefix from shape terms; shapes stay at root level (`_scalar`, `_array`, `_set`, `_tuple`, `_dict`).
  - `_scalar_set` → `_comparable`; `_type_scalar_set` → `_comparable_type` (shared between `_set` and `_nested`).
  - New `_nested` shape added (7th data shape for recursively nested arrays with typed leaf elements).
  - `_type` (old typedef property) → `_typedef`; `_type` is now a pure namespace.
  - Range family restructured: `_range` at root; `_range_min-inclusive` etc. as children; `_range_string` as child; `_range_valid`, `_range_valid_string`, `_range_normal`, `_range_normal_string` under `_range`.
  - `_kind_enum` → `_enum_types`; `_kind_object` → `_object_types`; `_kind_term` → `_term_type`.
  - `_type_scalar` → `_scalar_type`; `_type_tuple` → `_tuple_type`; `_dict_key_type` unchanged.
  - `_type_string_regexp` → `_type_regexp` (moved to root `_type` namespace).
  - `_type_data` (new enumeration root for all data types); `_type_data_comparable` (comparable subset); `_type_data_dict_key` (dict key subset).
  - `_type_term_*` terms added (replacing `_kind_term_*`); `_type_selection`, `_type_selection_mandatory`, `_type_selection_optional` added.
  - `_predicate_container` → `_predicate_section`.
- New flexible `_required` selection mechanism designed and validated:
  - `_required` is an array of `_selection_object` instances.
  - Each `_selection_object` contains `_selection_rules` (array of `_selection_rule`) and `_selection_descriptors` (nested array using `_nested` shape).
  - Each `_selection_rule` contains `_selection_type` (`_type_selection_mandatory` or `_type_selection_optional`) and optional `_elements`.
  - Evaluation is bottom-up: leaf arrays first; `_type_selection_mandatory` requires all leaf arrays to contribute (subject to `_elements`); `_type_selection_optional` allows any subset.
  - `_selection` is a pure namespace for all selection-related terms.
- All seven TSV tables finalised and verified: `_code.tsv`, `_data.tsv`, `_info.tsv`, `_predicates.tsv`, `_rule.tsv`, `_term.tsv`, `_type.tsv`.
- New `_info` property `_usage` added (DESCRIPTOR; how/why a value is used).
- `_domn` marked OBJECT DEFINITION (has a `_rule` section); `_prop` remains DESCRIPTOR only (open `_type_object`).
- `_predicate` added to `_term.tsv` (edge document field, also ENUM TYPE).

### Recent session (2026-03-25)
- Verified `_dict.json` (fully rewritten last session) passes all structural checks — clean.
- Ran term cards generator: 2 new cards written (`_dict_key.md`, `_dict_value.md`).
- Implemented typedef mechanism: added `_kind_term_typedef` (domn), `_type_key_term_typedef` (scalar type), `_type` shape property (data shapes), and supporting edges. Updated `_data._rule` shape selector to include `_type`. Documented in CLAUDE.md.

### Recent session (2026-03-24)
- Full review pass of all `data/core/` JSON files following the `_set_scalar` → `_scalar_set` rename. Systematic Python check script used on each file (`_gid` computation, `_lid` no-underscore, `_aid` contains `_lid`, language keys, stale API patterns, `_closed` in `_rule`, `_required`/`_recommended` disjoint, edge references).
- **`_scalar.json`**: fixed `_type_scalar_set._aid` (`["scalar_set"]` → `["set"]`); fixed definition/description to say "in a `_scalar_set` section"; fixed `_kind_enum._data` and `_kind_object._data` (`_type_scalar_set` as object key → `_scalar_set`); fixed two stale `"_type"` → `"_type_scalar"` in code examples.
- **`_scalar.terms.json`**: clean (all 33 type enumeration terms).
- **`_predicates.edges.json`**: clean (all 13 edges, all references valid).
- **`_scalar.enums.json`**: discovered `_type_string_HTML` was excluded from `_type_scalar_set` in the edge file but not documented in descriptions. Count "26 accepted values" was wrong (should be 25). Fixed descriptions in `_scalar.json`, `_scalar_set.json`, and `CLAUDE.md` (added HTML to exclusion list, changed count to 25).
- **`_scalar.edges.json`**: fixed `_type_string_HEX` value-of edge missing `_unit`, `_unit-name`, `_unit-symbol` from `_recommended` (closed rule would have silently blocked units on hex scalars).
- **`_domn.enums.json`**: clean (all 7 edges valid).
- All `data/core/` files now verified clean.

### Recent session (2026-03-23)
- Redesigned `_scalar` type system: `_type` becomes a namespace; `_type_scalar` is the new type descriptor in `_scalar`; `_type_scalar_set` is used in `_scalar_set`; `_dict_key_type` is used in `_dict_key`.
- Eliminated `_kind_number`, `_kind_string`, `_kind_key` companion properties; their specificity is now encoded directly in `_type_scalar` values (`_type_number_float`, `_type_string_Markdown`, `_type_key_term`, etc.).
- `_kind_enum` and `_kind_object` remain as companion descriptors for `_type_enum` and `_type_object`.
- Updated root `CLAUDE.md` throughout: `_scalar` properties table, `_type_scalar` enumeration (with all 33 values), all type subsections and code examples, `_scalar_set`, `_dict_key`, and the conditional rule example in the Graphs section.
- Next: update `containers.json`, `_scalar.json`, `_scalar.edges.json`, and documentation files.

### Recent session (2026-03-22)
- Established two-directory structure: `docs/` for both auto-generated term cards and hand-authored documentation. Term cards generator writes to `docs/` (config key `paths.terms`). Previously `terms/` was used for term cards; merged into `docs/` on 2026-03-31.
- Introduced `dictionary.config.json` at the repo root to centralise directory paths; the term-cards generator reads it at startup and falls back to built-in defaults if absent.
- Created `docs/Structure Definition Rules.md`: comprehensive explanation of the `_rule` section, selection structures, `_closed` semantics, both conditional rule mechanisms (`_predicate_property-of` presence-triggered and `_predicate_value-of` value-triggered), evaluation order, Strategy A, and the self-sufficient rule graph design — with examples throughout.
- Added reference to `Structure Definition Rules.md` from the `_rule` term description in `containers.json` and from the Rule Edge Strategy section in `data/core/CLAUDE.md`.
- Updated all CLAUDE.md files (`workflows/CLAUDE.md`, `workflows/term-cards/CLAUDE.md`, `data/core/CLAUDE.md`) to reflect the two-directory structure.

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
- Added SVG edge diagrams to `docs/images/` (`edge-basic.svg`, `edge-shared.svg`, `edge-bridge.svg`) and updated `_edge._examples` to reference them.
- Updated `_edge._description`: MD5 key formula now mentions `/` separator; "All predicates" → "Most predicates".
- Updated `_domn._description`: removed restriction to user-defined terms; `_domn` now serves as a general role/usage classifier for any term.
- Corrected `_set`: `_scalar_set` is now required (not optional); updated `_definition`, `_description`, and `_rule` accordingly.
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

The top level of the data description defines the **shape** of the data. At most one of the following properties is present:

| Property  | Description |
|-----------|-------------|
| `_scalar` | A single value. |
| `_array`  | An ordered list of values of the same type. |
| `_set`    | An unordered list of *unique* values of the same type. |
| `_tuple`  | An ordered list of values whose data type is defined by position. |
| `_dict`   | A key/value dictionary. The key is defined by a scalar string variant; the value is recursively defined by a `_data` section. |
| `_typedef` | A reference to a **typedef term** by `_gid`. The shape is resolved by looking up the referenced term's `_data` section. Mutually exclusive with all six inline shapes. |

The six inline shapes (`_scalar` through `_dict`) are described in detail in the subsections below. `_typedef` is described in the [Typedef mechanism](#typedef-mechanism) subsection.

#### `_scalar`

`_scalar` is an object property that defines and documents a scalar value. If the object is **empty** (`"_scalar": {}`), the value can be any generic boolean, number, string, or structure.

##### `_scalar` properties

| Property               | Required                        | Description |
|------------------------|---------------------------------|-------------|
| `_type_scalar`         | Yes (if `_scalar` not empty)    | The scalar data type. |
| `_kind_enum`           | No                              | Constrains the controlled vocabulary the enumeration value must belong to; relevant to `_type_enum`. Set of enumeration type `_gid`s. |
| `_kind_object`         | No                              | Constrains the object schema the value must conform to; relevant to `_type_object`. Set of object definition `_gid`s. |
| `_unit`                | No                              | Data unit, expressed as an enumeration element. |
| `_unit-name`           | No                              | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent. |
| `_unit-symbol`         | No                              | Unit symbol, used when `_unit` is absent. |
| `_regexp`              | No                              | Regular expression to validate string values; relevant to `_type_string` only (not valid for format-specific string types such as `_type_string_date`). |
| `_decimals`            | No                              | Number of decimals to display; relevant to `_type_number` and `_type_number_float` only. |
| `_valid-range`         | No                              | Valid numeric range for the value. |
| `_valid-range_string`  | No                              | Valid string range for the value. |
| `_normal-range`        | No                              | Normal numeric range for the value. |
| `_normal-range_string` | No                              | Normal string range for the value. |

##### `_type_scalar` enumeration

`_type_scalar` is required whenever `_scalar` is not empty. It defines the scalar data type. Number, string, and key types form hierarchies: `_type_number` accepts any number; `_type_number_float` and `_type_number_integer` are more specific. `_type_string` accepts any UTF-8 string; the `_type_string_*` variants declare a specific encoding or format. `_type_key` accepts any term key; the `_type_key_*` variants constrain the referenced term role.

- `_type_boolean` — A true/false boolean value.
- `_type_number` — A number; accepts both integer and floating-point values. `_decimals` permitted.
  - `_type_number_float` — A floating-point number (must be stored as float). `_decimals` permitted.
  - `_type_number_integer` — An integer — no decimal part. `_decimals` not permitted.
- `_type_string` — A generic UTF-8 string. `_regexp` permitted.
  - *`_type_string_formatted`* *(section — not a valid `_scalar_type` value)*
    - `_type_string_HTML` — HTML text.
    - `_type_string_Markdown` — Markdown text.
    - `_type_string_LaTeX` — LaTeX expression; rendered with KaTeX.
    - `_type_string_SVG` — SVG image.
  - *`_type_string_internet`* *(section — not a valid `_scalar_type` value)*
    - `_type_string_URI` — Uniform Resource Identifier.
    - `_type_string_Email` — Email address.
    - `_type_string_Hostname` — Internet hostname.
    - `_type_string_IPv4` — IPv4 address.
    - `_type_string_IPv6` — IPv6 address.
  - *`_type_string_timestamp`* *(section — not a valid `_scalar_type` value)*
    - `_type_string_YMD` — Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD). Range permitted.
    - `_type_string_date` — Date (JSON Schema `date` format). Range permitted.
    - `_type_string_time` — Time (JSON Schema `time` format). Range permitted.
    - `_type_string_date-time` — Date-time (JSON Schema `date-time` format). Range permitted.
  - *`_type_string_encoded`* *(section — not a valid `_scalar_type` value)*
    - `_type_string_HEX` — Hexadecimal value. Unit and range permitted.
- `_type_regexp` — A regular expression; the stored value is itself a pattern.
- `_type_key` — A string representing the `_key` of a document in any collection.
  - `_type_key_term` — A key that must reference any term.
  - `_type_key_term_enum-root` — A key that must reference an enumeration root — the root of a controlled vocabulary graph.
  - `_type_key_term_enum-item` — A key that must reference an enumeration element — a valid choice within a controlled vocabulary.
  - `_type_key_term_descriptor` — A key that must reference a descriptor (has a `_data` section).
  - `_type_key_term_object` — A key that must reference an object definition term (has a `_rule` section).
  - `_type_key_term_predicate` — A key that must reference a predicate term.
  - `_type_key_term_typedef` — A key that must reference a typedef term (carries `_type_term_typedef` in `_term_type`).
- `_type_handle` — A string containing the `_id` (`<collection>/<_key>`) of an ArangoDB document.
- `_type_enum` — A string representing the `_gid` of an enumeration element.
- `_type_object` — An object whose properties must correspond to descriptor term `_gid`s (may be empty).
- `_type_struct` — An object with indeterminate properties (may be empty).
- `_type_timestamp` — An integer representing a Unix timestamp.
- `_type_object_GeoJSON` — A GeoJSON object (may **not** be empty).

---

**`_type_boolean`**

Stored as a native boolean in ArangoDB (`true` or `false`). No other `_scalar` properties are needed.

```json
{
    "_scalar": {
        "_type_scalar": "_type_boolean"
    }
}
```

---

**`_type_number`, `_type_number_float`, `_type_number_integer`**

All three types represent numbers stored as double-precision floating-point in ArangoDB. They differ in what values are accepted and whether `_decimals` is permitted:

| Type                   | Accepts            | `_decimals` |
|------------------------|--------------------|-------------|
| `_type_number`         | Any number         | Permitted   |
| `_type_number_float`   | Floating-point     | Permitted   |
| `_type_number_integer` | Integers only      | Not permitted |

Use `_type_number` when both integer and float values are acceptable. Use `_type_number_float` when the value must be stored and displayed as a floating-point number. Use `_type_number_integer` when the value must be a whole number.

```json
{
    "_scalar": {
        "_type_scalar": "_type_number_float",
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

**`_type_string`, `_type_string_*`**

`_type_string` is a generic UTF-8 string. The `_type_string_*` variants specify a particular encoding or format — the type itself carries the format information, so no companion property is needed. `_regexp` is available only with `_type_string`; format-specific string types are self-defining and a regular expression could contradict them. Note the distinction: `_type_string_regexp` declares that the stored *value* is a regular expression; `_regexp` holds a validation pattern applied to a generic string value.

```json
{
    "_scalar": {
        "_type_scalar": "_type_string_HEX",
        "_valid-range_string": {
            "_min-range-inclusive_string": "0A",
            "_max-range-exclusive_string": "A5"
        }
    }
}
```

---

**`_type_key`, `_type_key_*`**

`_type_key` is a string representing the `_key` of a document in any collection. The `_type_key_*` variants constrain the referenced term to a specific role — the type itself carries the constraint, so no companion property is needed.

```json
{
    "_scalar": {
        "_type_scalar": "_type_key_term"
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
        "_type_scalar": "_type_enum",
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
        "_type_scalar": "_type_object",
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
        "_type_scalar": "_type_struct"
    }
}
```

---

**`_type_timestamp`**

An integer representing a Unix timestamp — the number of seconds elapsed since 1 January 1970 UTC. May include `_valid-range` and `_normal-range`.

```json
{
    "_scalar": {
        "_type_scalar": "_type_timestamp",
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
        "_type_scalar": "_type_object_GeoJSON"
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
            "_type_scalar": "_type_string"
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
            "_type_scalar": "_type_number",
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
                "_type_scalar": "_type_number_integer"
            }
        }
    }
}
```

---

**`_set`**

Array elements are themselves sets — arrays of unique, comparable elements. Unlike `_array`, `_set` is **not** recursive: because uniqueness requires comparability, the element type is constrained to a comparable scalar (via `_scalar_set`, not `_scalar`). See the [`_set`](#_set) section for the full definition.

```json
{
    "_array": {
        "_set": {
            "_scalar_set": {
                "_type_scalar_set": "_type_enum",
                "_kind_enum": ["ISO_639_3"]
            }
        }
    }
}
```

---

**`_tuple`**

Array elements are themselves tuples — ordered lists with positionally-typed elements. Each element's type is defined by the corresponding position in `_type_tuple`. See the [`_tuple`](#_tuple) section for the full definition.

```json
{
    "_array": {
        "_tuple": {
            "_type_tuple": [
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

`_set` is an object property that defines and documents an array of **unique** elements of the same comparable type. It is structurally similar to `_array`, but because uniqueness requires element comparability, the element type is restricted to comparable scalars and `_set` is **not** recursive. Unlike `_array`, `_set` cannot be empty: `_comparable` is always required, because without a declared element type there is no basis for enforcing uniqueness.

##### `_set` properties

| Property      | Required | Description |
|---------------|----------|-------------|
| `_comparable` | Yes      | Defines the data type of the set elements. |
| `_elements`   | No       | Minimum and maximum number of elements in the set. Same structure as in `_array`. |

##### `_comparable`

`_comparable` functions identically to `_scalar`, with one difference: the data type property is named **`_comparable_type`** instead of `_scalar_type`, and its value is restricted to **comparable types** (excluding `_type_struct`, `_type_object`, `_type_object_GeoJSON`, and the `_type_string_formatted` section types, which are not comparable).

###### `_comparable` properties

`_comparable` follows the same rules as `_scalar`, with `_comparable_type` in place of `_scalar_type`. The `_enum_types` and `_object_types` companion properties apply where relevant. The range, unit, `_regexp`, and `_decimals` properties are identical.

| Property               | Required | Description |
|------------------------|----------|-------------|
| `_comparable_type`     | Yes      | The data type of the set element. |
| `_enum_types`          | No       | Constrains the controlled vocabulary; relevant to `_type_enum`. |
| `_unit`                | No       | Data unit, expressed as an enumeration element. |
| `_unit-name`           | No       | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent. |
| `_unit-symbol`         | No       | Unit symbol, used when `_unit` is absent. |
| `_regexp`              | No       | Regular expression; relevant to `_type_string` only. |
| `_decimals`            | No       | Number of decimals to display; relevant to `_type_number` and `_type_number_float` only. |
| `_range_valid`         | No       | Valid numeric range for the value. |
| `_range_valid_string`  | No       | Valid string range for the value. |
| `_range_normal`        | No       | Normal numeric range for the value. |
| `_range_normal_string` | No       | Normal string range for the value. |

###### `_comparable_type` enumeration

`_comparable_type` is a bridge-graph subset of `_scalar_type`. It accepts all `_scalar_type` values **except**:

- All types in the `_type_string_formatted` section (`_type_string_HTML`, `_type_string_Markdown`, `_type_string_LaTeX`, `_type_string_SVG`) — display/markup strings not meaningful as comparable values.
- `_type_object`, `_type_struct`, `_type_object_GeoJSON` — non-comparable; set uniqueness cannot be enforced.

Accepted: `_type_boolean`, all `_type_number*` types, `_type_string` and all `_type_string_internet*`, `_type_string_timestamp*`, `_type_string_encoded*` subtypes, `_type_regexp`, all `_type_key*` types, `_type_handle`, `_type_enum`, and `_type_timestamp`.

The sub-properties of each range object (`_range_valid`, `_range_normal`, `_range_valid_string`, `_range_normal_string`) are documented in the [Range properties](#range-properties) subsection of `_scalar`.

```json
{
    "_set": {
        "_elements": {
            "_min-items": 1,
            "_max-items": 5
        },
        "_comparable": {
            "_comparable_type": "_type_enum",
            "_enum_types": ["ISO_639_3"]
        }
    }
}
```

---

#### `_tuple`

`_tuple` is an object property that defines and documents an ordered list in which each element may have a different data type. Unlike `_array` and `_set`, which apply a single type uniformly to all elements, a tuple is **positional**: the type at index *n* in `_type_tuple` applies to the value at index *n* in the tuple array.

##### `_tuple` properties

| Property      | Required | Description |
|---------------|----------|-------------|
| `_type_tuple` | Yes      | Ordered list of descriptor `_gid`s defining the data type of each tuple position. |
| `_elements`   | No       | Minimum and maximum number of elements the tuple may contain. |

##### `_type_tuple`

`_type_tuple` is an array of descriptor `_gid`s. The type definition for each tuple position is **not written inline**: each entry is the `_gid` of a descriptor term, and it is that term's `_data` section that defines the expected type for the corresponding position. Order is significant: position *n* in `_type_tuple` governs position *n* in the tuple value.

This indirection means that tuple positions reuse existing descriptor definitions from the dictionary rather than duplicating type information. The type of a tuple element is fully resolved by looking up the referenced descriptor and reading its `_data` section.

```json
{
    "_tuple": {
        "_type_tuple": [
            "ISO_3166_1_a2",
            "chr_birth_date",
            "chr_body_weight"
        ]
    }
}
```

##### `_elements`

`_elements` constrains how many elements a tuple value may contain. The length of `_type_tuple` acts as an absolute upper bound: neither `_min-items` nor `_max-items` may exceed it.

- If `_elements` is **omitted**, the tuple must contain exactly as many elements as `_type_tuple`.
- If `_elements` is **present**, the tuple length is governed by its sub-properties.

| Property     | Required | Description |
|--------------|----------|-------------|
| `_min-items` | No       | Minimum number of elements (inclusive). Cannot exceed the length of `_type_tuple`. If omitted, the minimum is zero. |
| `_max-items` | No       | Maximum number of elements (inclusive). Cannot exceed the length of `_type_tuple`. If omitted, the maximum equals the length of `_type_tuple`. |

When the tuple contains fewer elements than `_type_tuple`, the types for the trailing positions are simply not applied — the tuple is treated as a prefix of the full type sequence.

```json
{
    "_tuple": {
        "_type_tuple": [
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

`_dict_key` is a structure that defines the type of the dictionary key. It is structurally parallel to `_scalar` but uses **`_dict_key_type`** as the required type property. Because dictionary keys must be string-compatible object property names, only string-compatible types are accepted. `_dict_key_type` is always required — unconstrained dictionary keys are not permitted.

###### `_dict_key` properties

| Property        | Required | Description |
|-----------------|----------|-------------|
| `_dict_key_type`| Yes      | The data type of the dictionary key. |
| `_kind_enum`    | Conditional | Constrains the controlled vocabulary; activated by a `_predicate_value-of` edge when `_dict_key_type` is `_type_enum`. |
| `_unit`         | Conditional | Key unit, expressed as an enumeration element; activated by edge rule for applicable types. |
| `_unit-name`    | Conditional | Multilingual unit name (keyed by language `_gid`), used when `_unit` is absent; activated by edge rule. |
| `_unit-symbol`  | Conditional | Unit symbol, used when `_unit` is absent; activated by edge rule. |
| `_regexp`       | Conditional | Regular expression to validate the key format; activated by a `_predicate_value-of` edge when `_dict_key_type` is `_type_string`. |

Optional companions are not listed in the base `_rule`. They are activated by value-triggered conditional rules (`_predicate_value-of` edges): when `_dict_key_type` holds a specific value, the corresponding edge supplies the permitted optional properties for that key type.

###### `_dict_key_type` enumeration

`_dict_key_type` draws from the `_type_data_dict_key` enumeration — a bridge-graph subset of `_type_data_comparable`, further restricted to string-compatible types that can serve as valid object property names. Numbers, `_type_boolean`, `_type_timestamp`, `_type_regexp`, and the non-comparable object types are excluded.

- `_type_string` — A generic UTF-8 string.
  - *`_type_string_internet`* *(section)*
    - `_type_string_URI` — Uniform Resource Identifier.
    - `_type_string_Email` — Email address.
    - `_type_string_Hostname` — Internet hostname.
    - `_type_string_IPv4` — IPv4 address.
    - `_type_string_IPv6` — IPv6 address.
  - *`_type_string_timestamp`* *(section)*
    - `_type_string_YMD` — Partial/full date in YYYYMMDD format.
    - `_type_string_date` — Date (`YYYY-MM-DD`).
    - `_type_string_time` — Time (`HH:MM:SS`).
    - `_type_string_date-time` — Date-time (`YYYY-MM-DDTHH:MM:SS`).
  - *`_type_string_encoded`* *(section)*
    - `_type_string_HEX` — Hexadecimal string.
- `_type_key` — A string representing the `_key` of a document.
  - `_type_key_term` — A key that must reference any term.
  - `_type_key_term_enum-root` — A key that must reference an enumeration root.
  - `_type_key_term_enum-item` — A key that must reference an enumeration element.
  - `_type_key_term_descriptor` — A key that must reference a descriptor.
  - `_type_key_term_object` — A key that must reference an object definition term.
  - `_type_key_term_predicate` — A key that must reference a predicate term.
  - `_type_key_term_typedef` — A key that must reference a typedef term.
- `_type_handle` — A string representing the `_id` of an ArangoDB document.
- `_type_enum` — A string representing the `_gid` of an enumeration element.

The semantics of each type are identical to those described in the [`_scalar`](#_scalar) section.

##### `_dict_value`

`_dict_value` is equivalent to a full `_data` section: it may contain exactly one shape property (`_scalar`, `_array`, `_set`, `_tuple`, or `_dict`), making the dictionary structure fully recursive. An empty `_dict_value` object (`"_dict_value": {}`) means the value can be of any shape and type.

```json
{
    "_dict": {
        "_dict_key": {
            "_dict_key_type": "_type_enum",
            "_kind_enum": ["ISO_639_3"]
        },
        "_dict_value": {
            "_scalar": {
                "_type_scalar": "_type_string"
            }
        }
    }
}
```

The example above describes the multilingual structure used throughout the `_info` section: keys are ISO 639-3 language `_gid`s (e.g. `ISO_639_3_eng`), values are plain strings.

---

#### Typedef mechanism

A **typedef** is a reusable data shape definition. Any term can act as a typedef by carrying `_type_term_typedef` in its `_term_type` property. Other descriptors reference it by placing the typedef term's `_gid` in the `_typedef` property of their `_data` section.

**Rules:**

- `_typedef` is mutually exclusive with all six inline shape properties. A `_data` section either has one inline shape or a `_typedef` reference — never both.
- The typedef term must define its shape **inline** using one of the six concrete shape properties (`_scalar`, `_array`, `_nested`, `_set`, `_tuple`, `_dict`). It must not itself use `_typedef` — chaining is prohibited.
- `_typedef` holds a **single `_gid`** (not a set). Only one typedef may be referenced per descriptor.
- A descriptor whose `_data` uses `_typedef` must **not** carry a `_rule` section. Schema constraints belong on the typedef term itself (which may carry both `_data` and `_rule`).
- Validation performs **one lookup**: find the typedef term, read its `_data` section, apply it as if written inline.

**Typedef term structure:**

```json
{
    "_code": {
        "_nid": "_info",
        "_lid": "string",
        "_gid": "_info_string",
        "_aid": ["string"]
    },
    "_data": {
        "_dict": {
            "_dict_key": {"_dict_key_type": "_type_key_term"},
            "_dict_value": {"_scalar": {"_scalar_type": "_type_string"}}
        }
    },
    "_domn": {
        "_term_type": ["_type_term_typedef"]
    }
}
```

**Referencing the typedef:**

```json
{
    "_data": {
        "_typedef": "_info_string"
    }
}
```

---

### `_rule` Section

The `_rule` section defines how objects may be composed. It contains a set of rules that determine which properties are required, recommended, forbidden, or automatically managed within an object. Any term carrying a `_rule` section defines an object schema; other terms can reference it via `_type_object` and `_kind` in their `_data` section.

Conditional constraints are expressed in the graph layer — see the Graphs section. Two mechanisms exist: `_predicate_property-of` edges with non-empty `_path_data` carry rules that activate when a property is **present** (any value); `_predicate_value-of` edges carry rules that activate when a property holds a **specific value**. The `_rule` section handles only unconditional constraints.

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
        "_recommended": ["_type_scalar", "_kind_enum", "_kind_object", "_unit", "_unit-name", "_unit-symbol", "_regexp", "_decimals", "_valid-range", "_normal-range"]
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
| `_predicate` | `_type_enum`                     | Yes      | —       | The relationship predicate; qualifies the kind of relationship between `_from` and `_to`. |
| `_path`      | Set of `_type_handle`     | Yes      | —       | The set of graph root handles whose traversal passes through this edge. |
| `_path_data` | Open dictionary (`_type_struct`) | Yes      | `{}`    | Data associated with the edge, scoped by path or node context. |

#### Edge Uniqueness and Key Computation

No two edges may share the same `_from`/`_predicate`/`_to` combination. The `_key` of an edge document is computed as the **MD5 hash** of the concatenation `_from + "/" + _predicate + "/" + _to`, where `/` is the separator between the three fields.

The hash is always stored in **lowercase**. Use an explicit case conversion when computing the key to avoid ambiguity — do not rely on the default behaviour of any particular MD5 implementation. In ArangoDB AQL:

```aql
LET _key = LOWER(MD5(CONCAT(doc._from, "/", doc._predicate, "/", doc._to)))
```

For example, the edge from `terms/ISO_3166_3_ITA` via `_predicate_enum-of` to `terms/ISO_3166_3` hashes the string:

```
terms/ISO_3166_3_ITA/_predicate_enum-of/terms/ISO_3166_3
```

`_key` is not written to the edge JSON files — it is computed at insertion time, exactly as `_gid` is computed for term documents.

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
| `_predicate_property-of` | `_from` descriptor is a property of the `_to` schema term. Used to link descriptors to object definitions. When `_path_data` contains a rule object, that rule is activated whenever the property is present (any value) — see the Rule Edge Strategy section in `data/core/CLAUDE.md`. |
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

Conditional rules are constraints stored in `_path_data` on graph edges. Two predicates carry them:

| Predicate               | Trigger | Description |
|-------------------------|---------|-------------|
| `_predicate_property-of` (with non-empty `_path_data`) | Property is **present** (any value) | The rule in `_path_data[path_root]` applies whenever `_from` exists in the object, regardless of its value. |
| `_predicate_value-of`   | Property holds a **specific value** | `_from` is a possible value of the property `_to`. When `_to` holds value `_from` within the structural context identified by `_path`, the rules in `_path_data[path_root]` apply. |

**Presence-triggered rules** (`_predicate_property-of` with `_path_data`): used when a constraint must apply for every possible value a property can hold. The canonical case is mutual exclusion — when `_unit` is present (any unit value), `_unit-name` and `_unit-symbol` must be absent. This cannot be expressed with `_predicate_value-of` because the constraint is not tied to any specific value.

**Value-triggered rules** (`_predicate_value-of`): the edge encodes **what** (the value, in `_from`), **of which property** (in `_to`), **in which structural context** (in `_path`), **with what consequences** (in `_path_data[path_root]`).

```json
{
    "_key": "<edge hash>",
    "_from": "terms/_type_enum",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_type_scalar",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_required": {
                "_selection-descriptors_all": ["_type_scalar"]
            },
            "_recommended": ["_kind_enum"]
        }
    }
}
```

This edge states: within a `_scalar` structure, when `_type_scalar` holds the value `_type_enum`, the property `_kind_enum` becomes permitted (and recommended).

`_from` (`_type_enum`) is already part of the edge's primary key (`_from`/`_predicate`/`_to`), so it is not repeated as a `_path_data` key. The `_path_data` key is the path root handle (`terms/_scalar`), which identifies the structural context — consistent with how `_path_data` is keyed throughout the graph model.

**Context sensitivity**: the same value can produce different consequences in different structural contexts. A `_predicate_value-of` edge for `_type_enum` within `_scalar` (path root `terms/_scalar`) is a separate edge from one within `_scalar_set` (path root `terms/_scalar_set`). Each carries its own `_path_data` with context-appropriate rules.

**Precedence**: a closed conditional rule (`_closed: true`) replaces the base `_recommended` entirely, which can restrict the effective allowed set to fewer properties than the base rule permits. An open conditional rule (`_closed: false`) accumulates — it adds to `_required` and unions with `_recommended`. Neither can lift a `_banned` constraint. If a conditional rule's `_path_data` requires a property listed in the structure's `_rule._banned`, this is a conflict detectable at edge insertion time.

**Rule graph self-sufficiency**: the rule graph is designed to be the sole source of truth for both validation and UI behaviour — no out-of-graph knowledge about type semantics should be needed. This has a direct consequence for `_predicate_value-of` edge authoring:

- **Create an edge for every value that restricts the effective property set**, even if the only consequence is that fewer properties are allowed than the base rule permits. A closed conditional edge for `_type_boolean` with an empty `_recommended` signals "only `_type_scalar` is permitted here" and allows the validator and UI to detect and clean up orphaned properties from a previous value context.
- **Omit an edge only when the value truly changes nothing** relative to the base rule — no properties become required, no properties become banned, and the allowed set is unchanged. For `_type_boolean` this means an edge IS needed; for a value with the same allowed set as the base rule, it is not.
- **On value change** (e.g. the user changes `_type_scalar` from `_type_string` to `_type_boolean`): the effective schema before and after the change is computed from the graph (base rule + presence rules + old/new value rule), the diff identifies orphaned properties, and the UI offers to remove them rather than silently deleting them.

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
