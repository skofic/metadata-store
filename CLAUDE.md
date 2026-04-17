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

## Domain Context — EUFGIS / FORGENIUS

This dictionary is built to serve the **EUFGIS** (European Forest Genetic Resources Information System) project at [eufgis.org](https://eufgis.org). EUFGIS catalogues **forest gene conservation units (GCUs)** — defined forest areas managed to conserve the genetic diversity of one or more tree species across Europe.

The current development effort is driven by the **FORGENIUS** project ([forgenius.eu](https://www.forgenius.eu)), which adds characterisation data (remote sensing, field measurements, ecophysiology, modelling) to the existing EUFGIS database.

### Two data source streams

**Stream 1 — GeoService (external environmental databases)**
Grid and polygon-averaged remote sensing and climate data covering extended Europe. Key sources:
- **CHELSA v2.1** — high-resolution historical and projected climate (30 arc-seconds); 80+ bioclimatic variables including temperature, precipitation, solar radiation, wind, humidity, aridity, growing degree-days, phenology.
- **WorldClim v2.1** — global climate surfaces (30 arc-seconds); bioclimatic variables, historical and CMIP6 future scenarios.
- **ERA5-Land Hourly** — Copernicus reanalysis; temperature at 2m, precipitation, wind, soil moisture and temperature at four depths (7, 28, 100, 289 cm), latent heat flux, solar radiation, relative humidity.
- **MODIS products** — MOD15A2H (LAI/FPAR), MOD11A2 (land surface temperature), MYD17A2H (gross primary productivity).
- **EDO** — European Drought Observatory; soil moisture index, combined drought indicator, GRACE water storage anomaly, heat/cold wave index, FAPAR.
- **ESA CCI Biomass** — 100 m above-ground biomass (5 epochs: 2010–2020).
- **GLAD Canopy Height** — global 30 m forest canopy height (GEDI + Landsat).
- **EU-DEM** — 25 m digital elevation model; elevation, slope, aspect.
- **Copernicus DLT** — dominant leaf type (broadleaved / coniferous) at 10 m.
- **Sentinel-2 MSI** — NDVI monthly time series.
- **MODIS NDWI** — normalised difference water index monthly time series.

**Stream 2 — Characterisation Database (scientist-submitted datasets)**
Field data collected under FORGENIUS WP2 protocol from representative 15 m circular plots around GCUs. Organised into four domains:

| Domain | Key variables | Units |
|--------|--------------|-------|
| **Environmental** | Elevation, slope, aspect, land surface temperature, NDVI, NDWI, LAI, GPP, biomass, soil depth, coarse elements, relative humidity | m, °, K, °C, m²/m², t/ha, kg C/m²/day, cm, % |
| **Forestry** | Tree height, canopy height, CBH/DBH, crown height/length, basal area, tree age, regeneration, dead trees, PAI | m, cm, m²/ha, years |
| **Phenotypic** | Total tree height, turgor loss point (TLP), xylem embolism (P50), residual conductance (Gres), hydraulic capacitance, Huber value, specific leaf area (SLA), wood density, sapwood area, crown area, basal crown height | m, MPa, mmol/m²/s, %RWC/MPa, cm²/m², cm²/kg, g/cm³, cm² |
| **Modelled** | Frost damage, desiccation risk (PLC), carbon starvation, wildfire vulnerability, drought index | fraction (0–1), %, g_H₂O/g_DM, days |

### Key terminology

- **GCU** — Gene Conservation Unit: a delineated forest area managed for genetic conservation of a target tree species.
- **FS tree** — Functional Subset tree: one of the ~10 adult dominant/co-dominant trees measured per plot.
- **Target species** — the tree species the GCU was designated for (e.g., *Quercus robur*, *Pinus sylvestris*).
- **NFP** — National Focal Point: the national coordinator submitting GCU data.
- **WP2 protocol** — the FORGENIUS field measurement protocol defining exactly how each trait is measured.

### Why the unit ontology matters here

Variables arrive with inconsistent unit expressions (`_unit_length_m`, `_unit-name: "t/ha"`, `_unit-symbol: "kg of C/m^2/day"`). The unit ontology will:
1. Normalise all variable definitions to reference standard unit terms.
2. Enable automatic SI conversion for cross-variable comparisons.
3. Power unit-aware UI controls (unit selector, range validation in the user's preferred unit).
4. Support the conversion edge graph to convert values on the fly between units in the same quantity kind.

---

## Session Progress

> This section is maintained by Claude and updated at the end of each working session to allow seamless resumption across sessions.

### Completed
- `_code` section — identifiers (`_gid`, `_lid`, `_nid`), computation rules, secondary properties (`_aid`, `_pid`, `_name`, `_symbol`, `_regexp`, `_emoji`)
- `_info` section — multilingual structure, core and secondary properties, alias term exception
- `_data` section — **Version 3 design** documented in this file. Prototype terms in `notes/prototype/`.
- Graphs section — edge structure, `_path`/`_path_data`, functional and non-functional predicates, sections, bridge graphs, alias resolution, conditional rules, traversal semantics
- **Phase 2 complete** — all core term JSON files finished: 182 terms across 10 source files, all with complete `_info`. Files: `_term.json`, `_code.json`, `_info.json`, `_data.json`, `_scalar.json`, `_array.json`, `_dict.json`, `_object.json`, `_type.json`, `_predicate.json`.
- Edge JSON files: `_type.enum.json`, `_term.enum.json`, `_predicate.enum.json` — enum membership edges for core terms.

### In Progress
- Nothing currently in progress.

### Pending
- **Next**: Add example descriptor terms provided by the user to the dictionary.
- Fill skeleton `_info` content in `data/core/_code.json` (`_symbol_print`), `data/QUDT/namespace.json`, `data/QUDT/properties.json`, `data/UCUM/namespace.json`, `data/UCUM/properties.json`, `data/SI/namespace.json`, `data/SI/properties.json` — detailed plan at `/Users/milko/.claude/plans/humble-mapping-sifakis.md`.
- **Phase 5**: Remaining edge files — rule/schema edges (`_predicate_property-of`, `_predicate_value-of`) for core terms.
- **Open design questions**:
  1. **Modification cost**: graph-based schemas — cost of renaming/removing a term that acts as a property needs analysis.
  2. **Conflict detection**: general mechanism for detecting contradictory rules (start: check `_path_data` rules against `_banned`).
  3. **UI rendering hints (`_display` section)**: deferred — design after core dictionary structure is stable.

### Recent session (2026-04-16) — Unit ontology term files complete

Created all individual unit term files under `data/unit/`:
- `namespace.json` — 26 terms: root `unit` + 25 quantity kind sub-namespaces (carried over from previous session)
- `geometry.json` — 18 terms: Length (m, cm, mm, km, ft, in, mi), Area (m², cm², ha, km², acre), Volume (m³, cm³, L, mL), PlaneAngle (rad, deg, grad)
- `mechanics.json` — 13 terms: Mass (kg, g, mg, t, lb), MassDensity (kg/m³, g/cm³), Pressure (Pa, kPa, MPa, hPa, bar, atm)
- `thermodynamics.json` — 3 terms: Temperature (K, °C, °F)
- `time.json` — 12 terms: Duration (s, min, h, day, week, month, year, decade), Frequency (Hz, per-day, per-month, per-year)
- `radiation.json` — 7 terms: Irradiance (W/m², kJ/m²/day, MJ/m²/day, kWh/m²), Velocity (m/s, km/h, knot)
- `flux.json` — 10 terms: MassFluxDensity (kg/m²/s, kg/m²/day, g/m²/day), CarbonFluxDensity (kgC/m²/s, kgC/m²/day, kgC/m²/year), MassPerArea (kg/m², t/ha, g/m², Mg/ha)
- `ratios.json` — 12 terms: AreaRatio (m²/m²), AreaPerMass (m²/kg, cm²/g), VolumetricRatio (m³/m³), MassRatio (kg/kg), MolarFluxDensity (mol/m²/s, mmol/m²/s), HydraulicCapacitance (%RWC/MPa, Pa⁻¹), DegreeDays (°C·day), Dimensionless (1), Percent (%)
- `genomics.json` — 4 terms: SequenceLength (bp, kb, Mb, Gb)

Total: 99 unit terms. Each carries full `_info` and `_prop` with SI_factor, SI_offset (when non-zero), QUDT_multiplier, QUDT_offset (temperature only), UCUM_code, QUDT_dimension_vector.

Ran `assign-roles` (26 role updates, all files normalised) and `term-cards` (106 new cards written).

**Pending for unit ontology**: edge files connecting units to their quantity kind roots (enum-of) and encoding pairwise SI conversion (converts-to bidirectional).

### Recent session (2026-04-15) — v0.1.1: term generation and role determination

**`assign-roles` workflow** (new Swift package at `workflows/assign-roles/`):
- Automatically computes `_domn._term_role` for all terms by scanning all term and edge files.
- Five detection rules: `_term_role_descriptor` (has `_data`), `_term_role_namespace` (`_gid` used as `_nid`), `_term_role_predicate` (`_gid` used as `_predicate`), `_term_role_enum-root` (handle in `_path` of enum-of/bridge-of edges), `_term_role_enum-item` (two situations: direct enum-of `_from`, or alias bridge node).
- Preserves user-assigned `_term_role_data-type`, `_term_role_data-shape`, and `_term_role_typedef`.
- Also normalises all JSON files (term and edge) to canonical key ordering and tab indentation on every run. Key order: term top level (`_code`, `_info`, `_data`, `_domn`, `_prop`), `_code` section, `_info` section, edge top level (`_from`, `_predicate`, `_to`, `_path`, `_path_data`), everything else alphabetical.
- Added `_term_role_namespace` as a new auto-assigned role with full `_info` and term card.
- Fixed `_locked: ["_id", "_rev"]` incorrectly present in `_code._data._object._closed` — removed; `_id`/`_rev` are top-level ArangoDB document fields and belong only in `_term._data`.

**`term-cards` workflow** — two enhancements:
- Added `_domn` section to cards: renders non-`_term_role` properties as a key/value table (role tags are already shown at the top). Section is omitted when `_domn` only contains `_term_role`.
- Added `_prop` section to cards: key/value table with smart value rendering (numbers, GID links, blob handles, multilingual dicts, arrays).
- Extended source directories: now reads from both `data/core/` and `data/standards/` (13 new cards for standards namespace and property terms). All `docs/` cards regenerated.
- Decision: term cards are scoped to `data/core/` and `data/standards/` only. ISO and other large enumeration data (14K+ terms) remain out of `docs/` — a flat directory of that size is unusable.

**`workflows/CLAUDE.md`**: added JSON formatting rules section (canonical key ordering, tab indentation, number format, empty collections) as the shared standard for all workflows that write JSON.

### Recent session (2026-04-12) — Phase 2 complete
- Wrote `_info` for all terms in `_term.json`: `_term`, `_id`, `_key`, `_rev`, `_domn`, `_prop`, `_term_role`, and all six `_term_role_*` terms.
- Wrote `_info` for all terms in `_type.json`: `_type`, `_type_scalar`, `_type_comparable`, `_type_key`. Added `_term_role_typedef` to `_domn` of the three typedef terms.
- Moved `_set` from its own file into `_data.json`; wrote `_info` for it.
- Removed `_term_key_predicate` and `_term_key_typedef` from `_scalar.json`, `_type.json`, `_type.enum.json`, `CLAUDE.md`, and `term-index.json`. Rationale: official predicates are queried via the `_predicate` enumeration; all-predicate usage is tracked by `_term_role_predicate`; typedef usage is queryable via `_data._typedef`. The `_term_key_*` variants added no value over existing mechanisms.
- Various `_info` corrections across `_term.json` and `_code.json`: links, bold text, ArangoDB-accurate `_key` description, alias term explanation in `_term`.

### Recent session (2026-04-10, continued) — `_scalar.json` corrections and companion terms
- Fixed wrong range bound property names everywhere (`_min-range-inclusive` → `_min-inclusive`, etc.) in `_scalar.json`, `_array.json`, `CLAUDE.md`, and all `docs/` cards.
- Fixed two `_gid` typos: `_miax-inclusive` → `_max-inclusive` and `_string_miax-inclusive` → `_string_max-inclusive`.
- Fixed `_data` bug in `_string_min-*` / `_string_max-*` terms: `"_number": {}` → `"_string": {}`.
- Wrote `_info` for 17 companion/range terms: `_unit`, `_unit_name`, `_unit_symbol`, `_range_valid`, `_range_normal`, `_range_valid_string`, `_range_normal_string`, `_range`, `_range_string`, `_min-exclusive`, `_min-inclusive`, `_max-exclusive`, `_max-inclusive`, `_string_min-exclusive`, `_string_min-inclusive`, `_string_max-exclusive`, `_string_max-inclusive`.
- Key content decisions: `_unit` is a scalar `_enum` (single value, not a set); `_unit` accepted by `_number`, `_number_float`, `_number_integer`, `_string` only (not `_timestamp`); `_range` typedef enforces at-least-one-bound constraint via two-phase `_selectors`.
- Regenerated all term cards.

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
- `_type` namespace: `_type_scalar`, `_type_comparable`, `_type_key` as typedef terms. `_scalar`, `_set`, `_dict_key`, `_nested` reference these via `_typedef`.
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

#### Physical constraints in `_prop` — unit terms

Unit terms may carry a `unit_range` object in their `_prop` section to express a **physical constraint** imposed by the measurement scale itself — a bound that no value of that unit can ever legitimately exceed, regardless of the quantity being measured. `unit_range` is a dedicated descriptor (GID `unit_range`, defined in `data/unit/namespace.json`) with `_data._typedef: "_range"`, keeping it semantically distinct from the generic `_range_valid` used in descriptor `_data` sections.

```json
{
    "_prop": {
        "SI_factor": 1.0,
        "SI_base": true,
        "UCUM_code": "K",
        "unit_range": { "_min-inclusive": 0 }
    }
}
```

**Scope**: only add `unit_range` to a unit term when the *unit definition* prohibits certain values. Do not add it for quantities that happen to be non-negative in a given use case (e.g. mass, length, area — all can be negative in displacement or anomaly contexts). The rule applies to:

| Unit kind | Constraint | Rationale |
|-----------|-----------|-----------|
| Temperature (K) | `_min-inclusive: 0` | Absolute zero is the physical floor of the kelvin scale |
| Temperature (°C) | `_min-inclusive: -273.15` | Equivalent absolute zero in Celsius |
| Temperature (°F) | `_min-inclusive: -459.67` | Equivalent absolute zero in Fahrenheit |
| Pressure (all units) | `_min-inclusive: 0` | Absolute pressure cannot be negative |
| Hydraulic capacitance (all units) | `_min-inclusive: 0` | Capacitance is a non-negative ratio by definition |
| Percent | `_min-inclusive: 0`, `_max-inclusive: 100` | A percentage is bounded to [0, 100] |

**Inheritance and validation semantics**: when a descriptor selects a unit via `_unit` and that unit carries `unit_range` in its `_prop`, the validator applies the unit's constraint as a hard physical bound in addition to any `_range_valid` declared on the descriptor itself. The effective range is the **intersection** of both: `effective_min = max(unit_min, descriptor_min)` and `effective_max = min(unit_max, descriptor_max)`. A descriptor may narrow but never widen the unit's physical constraint.

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
| `_regexp` | No       | A regular expression that constrains the `_lid` of enumeration elements whose closest graph ancestor carrying `_regexp` is this term. May be placed on enumeration root terms or on section nodes within an enumeration graph. |
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

#### Cross-references and link format

Two linking rules govern how term `_gid`s are referenced in Markdown strings. Both are defined in full in `data/core/CLAUDE.md § Link Format`.

**Rule A — Term cards** (`_description`, `_examples`, `_notes`, `_methods`, `_usage`, `_citation`, `_provider`, `_url`; not `_title` or `_definition`):
- First occurrence of a term `_gid` as a backtick reference → `` [`gid`](gid.md) ``
- Subsequent occurrences in the same field → plain `` `gid` ``
- Self-references → always plain backtick, never a link
- Each field is independent; content inside fenced code blocks is never transformed

**Rule B — Large Markdown documents** (CLAUDE.md files, standalone docs):
- Term reference in a heading → always a link
- Within each heading section, first mention resets: first → link, subsequent → plain backtick

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
                "_min-inclusive": 0.0,
                "_max-exclusive": 300.0
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

| Property         | Description |
|------------------|-------------|
| `_min-inclusive` | Lower bound, value included (≥) |
| `_min-exclusive` | Lower bound, value excluded (>) |
| `_max-inclusive` | Upper bound, value included (≤) |
| `_max-exclusive` | Upper bound, value excluded (<) |

```json
{
    "_range_valid": {
        "_min-inclusive": 0,
        "_max-exclusive": 100
    }
}
```

**String ranges** (`_range_valid_string`, `_range_normal_string`):

| Property                | Description |
|-------------------------|-------------|
| `_string_min-inclusive` | Lower bound, value included |
| `_string_min-exclusive` | Lower bound, value excluded |
| `_string_max-inclusive` | Upper bound, value included |
| `_string_max-exclusive` | Upper bound, value excluded |

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

`_set` uses `_typedef: "_type_comparable"` to constrain the element type. The type is expressed as a property key inside `_set`, exactly as in `_scalar`:

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

The `_type_comparable` typedef adds `_elements` as a recommended companion property for controlling the number of elements.

---

#### `_nested`

`_nested` is a recursively nested array whose leaves are sets. It uses `_typedef: "_type_comparable"` — the leaf-level type follows set semantics (comparable types only). The nesting depth is unlimited; the validator descends until it reaches the leaf elements.

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
| `_type_comparable`   | Comparable scalar types only (excludes `_text*`); adds `_elements` as recommended |
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
