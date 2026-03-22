# Structure Definition Rules

This document explains how structural constraints are defined and applied in the data dictionary. It covers the `_rule` section, the selection structures used inside it, the `_closed` flag, and the graph-layer conditional rule system built on `_predicate_value-of` edges. Together these mechanisms form the complete schema language for the dictionary.

---

## Overview

Every term that defines an object type carries a `_rule` section. Its mere presence — even empty — signals that the term is an object definition: it describes a structure (an ArangoDB document or embedded object) whose composition is governed by rules. An empty `_rule` section means the term is an object definition whose rules are expressed entirely in the graph layer.

When non-empty, the `_rule` section holds **unconditional** structural constraints: constraints that apply regardless of property values. Value-dependent constraints are always in the graph layer, never in `_rule`.

The two layers together form the complete rule system:

| Layer | Mechanism | What it expresses |
|-------|-----------|-------------------|
| `_rule` section | Properties of the term object | Unconditional constraints (always-required, always-banned, defaults, etc.) |
| Graph layer | `_predicate_value-of` edges with `_path_data` | Conditional constraints (rules that activate when a property holds a specific value) |

---

## The `_rule` Section

### `_closed`

`_closed` is the only **required** property in every rule object — both base `_rule` sections and conditional rule objects in `_path_data`. Its explicit presence eliminates ambiguity: you never need to trace the rule hierarchy to determine whether a schema is open or closed.

- **`_closed: false`** — open schema. Properties outside `_required` and `_recommended` are accepted without error. Use for schemas that are still evolving or where extensibility is intentional.
- **`_closed: true`** — closed schema. Only properties listed in `_required` or `_recommended` may be present. Any other property causes a validation error. Use for mature, well-controlled schemas.

```json
{
    "_rule": {
        "_closed": true,
        "_required": {
            "_selection-descriptors_all": ["_lid"]
        },
        "_recommended": ["_nid", "_gid", "_aid"]
    }
}
```

`_lid` must always be present. `_nid`, `_gid`, and `_aid` are permitted but optional. Any other property is a validation error.

---

### `_required` and `_recommended` — Disjoint Tiers

`_required` and `_recommended` together define the **allowed property set**. They are strictly disjoint: a property appears in exactly one or neither, never both.

- **Required** = allowed and mandatory. The validator enforces that required properties are present.
- **Recommended** = allowed and optional. In a closed schema, they form the whitelist alongside required properties. In an open schema, they are advisory.

The allowed set for a closed schema is the union of `_required` and `_recommended`. For an open schema, the allowed set is unconstrained — `_recommended` documents expectations but does not enforce them.

Never list a required property in `_recommended`. If a property is required it is already allowed; listing it in `_recommended` is redundant and signals a modelling mistake.

---

### `_required`

`_required` contains one or more **selection structures** — each expressing a cardinality constraint over a group of descriptor `_gid`s. When multiple structures are present, **all must be satisfied simultaneously** (AND logic). An empty `_required` object is invalid; at least one selection structure must be present.

`_required` is evaluated **after** `_default-value` and `_computed` are applied. This means a property can be both computed and required: the system sets the value first, and the validator confirms its presence afterwards.

The six selection structures are described in detail in [Selection Structures](#selection-structures) below.

---

### `_recommended`

`_recommended` is a **flat array** of descriptor `_gid`s. It is never a selection structure.

In a closed schema (`_closed: true`), `_recommended` acts as the optional-property whitelist. Only properties listed here or in `_required` are allowed; anything else is rejected.

In an open schema (`_closed: false`), `_recommended` is advisory — it documents expected optional properties for form generation and display, but the validator does not reject unlisted properties.

```json
{
    "_rule": {
        "_closed": true,
        "_recommended": [
            "_name", "_symbol", "_regexp", "_emoji"
        ]
    }
}
```

---

### `_banned`

`_banned` is a flat array of descriptor `_gid`s. If any listed property is present in the object, validation fails unconditionally.

`_banned` is **absolute**: it takes precedence over all other rules, including conditional graph rules. No `_predicate_value-of` edge can activate a property that `_banned` prohibits. If a conditional rule's `_path_data` requires a banned property, that is a conflict detectable at edge insertion time.

`_banned` applies in both open and closed schema modes.

```json
{
    "_rule": {
        "_closed": false,
        "_banned": ["_data", "_rule"]
    }
}
```

An object of this type must never contain `_data` or `_rule`, regardless of any other rule.

---

### `_computed`

`_computed` is an array of descriptor references whose values are automatically set by the system if not explicitly provided. Computed properties are resolved **before** `_required` is checked, so a property can appear in both `_computed` and `_required`: the system sets the value first, and the validator confirms it afterwards.

Computed properties are typically paired with `_immutable` to prevent modification after the system sets them.

```json
{
    "_rule": {
        "_computed": ["_gid", "_key"],
        "_immutable": ["_gid", "_key"]
    }
}
```

`_gid` and `_key` are computed from the `_code` section and cannot be changed once set.

---

### `_locked`

`_locked` is an array of descriptor references whose values are entirely managed by the system. Unlike `_computed` — where the user may optionally supply the value — locked properties are fully opaque: users cannot set or modify them.

---

### `_immutable`

`_immutable` is an array of descriptor references that, once set (by the user or by the system), cannot be modified or deleted.

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_all": ["_lid"]
        },
        "_immutable": ["_lid", "_nid"]
    }
}
```

Identifiers and namespace assignments are immutable once set. Changing them would break all edges that reference the term by its `_gid`.

---

### `_default-value`

`_default-value` is a key/value dictionary mapping descriptor `_gid`s to their default values. Defaults are applied at insertion time **before** `_required` is checked — this means a property can appear in both `_default-value` and `_required`: if the user omits it, the default fills it in, and validation succeeds.

```json
{
    "_rule": {
        "_default-value": {
            "chr_status": "active"
        }
    }
}
```

---

## Selection Structures

Selection structures appear inside `_required` and express cardinality constraints over groups of descriptor `_gid`s. The first four take a **flat set** as their value. The last two take an **array of sets** and apply a two-phase rule.

| Structure | Value shape | Meaning |
|-----------|-------------|---------|
| `_selection-descriptors_one` | Set | Exactly one descriptor must be present; the rest must be absent. |
| `_selection-descriptors_one-none` | Set | Zero or one descriptor may be present. |
| `_selection-descriptors_any` | Set | One or more descriptors must be present. |
| `_selection-descriptors_all` | Set | All descriptors must be present. |
| `_selection-descriptors_one-of-any` | Array of sets | From each set, exactly one descriptor is the valid form. At least one set must contribute an element. |
| `_selection-descriptors_one-of-all` | Array of sets | From each set, exactly one descriptor is the valid form. All sets must contribute an element. |

### Flat selectors

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_one": ["_type_boolean", "_type_number", "_type_string"]
        }
    }
}
```

Exactly one of the three type properties must be present.

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_all": ["_lid"],
            "_selection-descriptors_any": ["_title", "_definition"]
        }
    }
}
```

`_lid` must always be present AND at least one of `_title` or `_definition` must be present. Multiple selectors are ANDed together.

### Grouped selectors — `_selection-descriptors_one-of-any` and `_selection-descriptors_one-of-all`

These selectors model the pattern where several independent choices must each resolve to exactly one option, and then some or all of those choices must be present.

The canonical use case is a range object — a structure specifying one or two bounds. Each bound has an inclusive and an exclusive variant; only one variant per bound is meaningful.

**`_selection-descriptors_one-of-any`** — at least one set must contribute:

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

From each set, at most one form may be present (inclusive or exclusive, not both). At least one bound overall must be present — this describes an open-ended range: a lower bound only, an upper bound only, or both.

**`_selection-descriptors_one-of-all`** — all sets must contribute:

```json
{
    "_rule": {
        "_required": {
            "_selection-descriptors_one-of-all": [
                ["_min-range-inclusive", "_min-range-exclusive"],
                ["_max-range-inclusive", "_max-range-exclusive"]
            ]
        }
    }
}
```

Both sets must contribute exactly one element each — this describes a closed range where both bounds are required.

---

## The Graph Layer — Conditional Rules

Unconditional constraints belong in `_rule`. Constraints that depend on whether a property is present, or on what value it holds, belong in the graph layer. Two edge predicates carry conditional rules:

| Predicate | Trigger | Rule activation |
|-----------|---------|-----------------|
| `_predicate_property-of` with non-empty `_path_data` | Property is **present** (any value) | `_path_data` rule applies |
| `_predicate_value-of` | Property holds a **specific value** | `_path_data` rule applies |

Both predicates use the same accumulation semantics and the same `_path_data` structure.

### The `_predicate_property-of` Edge and What It Signals

A `_predicate_property-of` edge declares that `_from` is a property of the `_to` schema. Its `_path_data` communicates two distinct things depending on whether it is empty or not:

- **Empty `_path_data` (`{}`)**: the property's values trigger further conditional rules via `_predicate_value-of`. The presence of this edge signals that the property governs schema composition — changing its value may add or remove required or permitted properties.
- **Non-empty `_path_data`**: a rule that activates whenever the property is **present** (any value), in addition to any value-specific conditionals.
- **No edge at all**: the property is passive — its value never changes any schema configuration. Its membership in the schema is declared implicitly by its appearance in the `_recommended` or `_required` lists of relevant conditionals.

The canonical use for non-empty `_path_data` is **mutual exclusion that cannot be expressed by value resets** — constraints that apply across all possible values of a property and across all possible contexts. The `_unit` group is the primary example: `_unit`, `_unit-name`, and `_unit-symbol` are mutually exclusive regardless of type or kind context, and no value-reset chain can encode this, because the constraint is not tied to any specific value.

```json
{ "_from": "terms/_unit",
  "_predicate": "_predicate_property-of",
  "_to": "terms/_scalar",
  "_path": ["terms/_scalar"],
  "_path_data": {
      "terms/_scalar": {
          "_closed": false,
          "_banned": ["_unit-name", "_unit-symbol"]
      }
  } },

{ "_from": "terms/_unit-name",
  "_predicate": "_predicate_property-of",
  "_to": "terms/_scalar",
  "_path": ["terms/_scalar"],
  "_path_data": {
      "terms/_scalar": {
          "_closed": false,
          "_banned": ["_unit"]
      }
  } },

{ "_from": "terms/_unit-symbol",
  "_predicate": "_predicate_property-of",
  "_to": "terms/_scalar",
  "_path": ["terms/_scalar"],
  "_path_data": {
      "terms/_scalar": {
          "_closed": false,
          "_banned": ["_unit"]
      }
  } }
```

When `_unit` is present, `_unit-name` and `_unit-symbol` are banned. When `_unit-name` or `_unit-symbol` is present, `_unit` is banned. `_unit-name` and `_unit-symbol` may coexist (free-text name alongside a symbol, without a formal unit term).

### The `_predicate_value-of` Edge

A `_predicate_value-of` edge encodes the statement: *"when property `_to` holds the value `_from`, within the structural context `_path`, apply the rules in `_path_data`."*

```json
{
    "_from": "terms/_type_string",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_recommended": [
                "_kind_string", "_regexp",
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range_string", "_normal-range_string"
            ]
        }
    }
}
```

This edge states: within a `_scalar` structure (path root `terms/_scalar`), when `_type` holds the value `_type_string`, only the listed properties are permitted and the schema is closed.

The structural context (`_path`) is key: the same value can produce different consequences in different contexts. A `_predicate_value-of` edge for `_type_string` within `_scalar` is entirely independent of one within `_set_scalar`, each with its own `_path_data`.

### Conditional Rule Accumulation

When a conditional rule object is evaluated alongside the base `_rule`, the rules combine according to the closure mode of the **conditional**:

- **Closed conditional** (`_closed: true`): the conditional `_recommended` **replaces** the base `_recommended` entirely. The result is exactly the conditional whitelist.
- **Open conditional** (`_closed: false`): the conditional `_recommended` **accumulates** — it is unioned with the base `_recommended`. Any `_banned` entries in the conditional remove properties from the effective permitted set.

`_required` **always accumulates** regardless of closure mode — additional requirements from the conditional are ANDed with the base requirements.

`_banned` is always unconditional and absolute in both the base rule and in any conditional rule.

### Evaluation Order

When multiple conditional rules apply simultaneously — for example, a property is present (triggering its `_property-of` rule) and also holds a specific value (triggering a `_value-of` rule) — they are applied in this order:

1. **Base `_rule`** — unconditional structural constraints.
2. **Presence rules** — all `_predicate_property-of` `_path_data` rules for properties currently present in the object, accumulated on top of the base.
3. **Value rules** — all `_predicate_value-of` `_path_data` rules for the current values of governing properties, accumulated on top of the result so far.

Each layer uses the same closed/open accumulation semantics. `_banned` from any layer is unconditional and absolute throughout.

---

## Strategy A — The Self-Sufficient Rule Graph

The rule graph is designed to be **self-sufficient**: validation and UI behaviour derive entirely from the graph, with no out-of-graph knowledge about type semantics.

### When to create an edge

Create a `_predicate_value-of` edge for a value whenever **the effective allowed property set differs from the base rule**, in either direction — more properties required, fewer properties permitted, or both.

Do not create an edge when the value changes nothing relative to the base rule.

The critical case: a value that permits *fewer* properties than the base `_recommended` whitelist still requires an explicit closed conditional edge. Without it, the validator cannot detect semantically invalid combinations (for example, `_type_boolean` with `_regexp`) and the UI has no basis for cleaning up orphaned properties when the governing property changes value.

Consider the `_scalar` structure. Its base `_rule._recommended` lists **all** possible `_scalar` properties across all types — because it must describe the full optional-property whitelist without knowing which type is in force. Without type-specific closed conditionals, a scalar with `_type_boolean` that also has `_regexp`, `_decimals`, and `_valid-range` would pass structural validation silently.

**Passive properties** are properties whose presence never triggers any rule and whose values never govern schema composition. They have no `_predicate_property-of` edge. Their membership in the schema is declared implicitly by their appearance in the `_recommended` lists of the conditionals that permit them. In `_scalar`, passive properties include `_regexp`, `_decimals`, `_valid-range`, `_normal-range`, `_valid-range_string`, and `_normal-range_string` — they appear in the `_recommended` lists of the type and kind conditionals that allow them, but no presence-triggered rule depends on their presence and their values trigger no further conditionals.

**Consequence**: you cannot discover all properties of a schema by traversing `_predicate_property-of` edges alone. Tooling that inspects schema membership (graph browser, schema inspector) must also read the `_recommended` lists in the rule conditionals to get the full picture.

Create a `_predicate_property-of` edge only when:
1. The property has a **presence-triggered rule** (non-empty `_path_data`) — the `_unit` mutual exclusion group is the canonical example.
2. The property's values trigger further conditional rules via `_predicate_value-of` — i.e., it governs schema composition, like `_type` and `_kind_number`.

### Closed vs open conditionals

- Use **`_closed: true`** when the value defines a specific, bounded allowed set. The conditional `_recommended` becomes the complete optional-property whitelist for that value, replacing the base. This is the **reset** mechanism.
- Use **`_closed: false`** for **presence-triggered rules** on `_predicate_property-of` edges — where a constraint (typically a ban) must apply without replacing the whitelist.

For all value-triggered conditionals in `_scalar` — both `_type_*` and `_kind_*` — use `_closed: true`. The reset operates at two levels:

- **`_type_*` conditionals** define the permitted set at the type level. They require `_type` and any companion properties mandatory for that type. They list only those optional properties that are meaningful for the type in general, before any kind qualifier. Types that accept no optional properties at all include no `_recommended` — absent `_recommended` in a closed conditional means the optional whitelist is reset to empty.
- **`_kind_*` conditionals** refine within the type. They require both `_type` and the qualifying property (e.g. `_kind_number`), and define the exact optional properties for that specific kind. `_kind_number_float` permits `_decimals`; `_kind_number_integer` does not. Each kind conditional fully replaces the type-level whitelist — the effective optional properties are those in the kind conditional, not the union of both levels.

### On value change

When a governing property changes value (e.g. `_type` changes from `_type_string` to `_type_boolean`), the UI performs this procedure:

1. Compute the old effective schema: base rule → presence rules → old type-level conditional → old kind-level conditional (if any).
2. Compute the new effective schema: base rule → presence rules → new type-level conditional (no kind-level conditional, since the type change resets it).
3. Diff: properties in the old allowed set but not the new are now orphaned.
4. Offer to remove orphaned properties — do not silently delete them, since the user may be exploring and intend to revert.

This procedure applies at each governing level: changing `_type` discards both the type-level and kind-level conditionals and replaces them with the new type's conditional; changing `_kind_number` replaces only the kind-level conditional. This procedure works correctly only when every value that restricts the allowed set has an explicit closed conditional edge.

---

## Example — `_scalar` Rule Graph

The `_scalar` structure is the canonical example of a self-sufficient rule graph. The base `_rule` section covers unconditional constraints; the graph layer covers all type-specific constraints.

**Base `_rule`** (in the `_scalar` term):

```json
{
    "_rule": {
        "_closed": true,
        "_required": {
            "_selection-descriptors_one": [
                "_type_boolean", "_type_number", "_type_string",
                "_type_key", "_type_handle", "_type_enum",
                "_type_object", "_type_struct", "_type_timestamp",
                "_type_object_GeoJSON"
            ]
        },
        "_recommended": [
            "_kind_number", "_kind_string", "_kind_key", "_kind_enum", "_kind_object",
            "_unit", "_unit-name", "_unit-symbol", "_regexp", "_decimals",
            "_valid-range", "_valid-range_string",
            "_normal-range", "_normal-range_string"
        ]
    }
}
```

Exactly one `_type_*` value must be present. The broad `_recommended` list is the union of all properties any type could ever use.

**Conditional edge for `_type_boolean`**:

```json
{
    "_from": "terms/_type_boolean",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_required": {
                "_selection-descriptors_one": ["_type"]
            }
        }
    }
}
```

`_type_boolean` permits no optional properties. The closed conditional replaces the base `_recommended` and explicitly restores the required set: `_type` is required, and no `_recommended` means the optional whitelist is empty.

**Conditional edge for `_type_number`**:

```json
{
    "_from": "terms/_type_number",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_required": {
                "_selection-descriptors_all": ["_type", "_kind_number"]
            }
        }
    }
}
```

`_type` and `_kind_number` are both required. No optional properties are declared at the type level — the kind-level conditionals (for `_kind_number_float` and `_kind_number_integer`) define the optional properties available within each numeric kind.

**Conditional edge for `_kind_number_float`**:

```json
{
    "_from": "terms/_kind_number_float",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_kind_number",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_required": {
                "_selection-descriptors_all": ["_type", "_kind_number"]
            },
            "_recommended": [
                "_decimals",
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range", "_normal-range"
            ]
        }
    }
}
```

The kind-level conditional resets the whitelist to the float-specific optional properties. `_decimals` is permitted here but absent from `_kind_number_integer`'s conditional — the mutual exclusion is handled entirely by the reset pattern, not by bans.

---

## Relationship to Term Cards

Each term that defines a structural concept — such as `_rule`, `_required`, `_closed`, `_banned` — has a corresponding term card in the `terms/` directory. Term cards are generated automatically by the `term-cards` workflow from the source JSON in `data/core/`. To understand any specific rule property in detail, consult its card directly. To understand how the rule system works as a whole, this document is the primary reference.
