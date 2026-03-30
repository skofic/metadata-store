# Structure Definition Rules

This document explains how structural constraints are defined and applied in the data dictionary. It covers the [`_rule`](_rule.md) section, the selection structures used inside it, the [`_closed`](_closed.md) flag, and the graph-layer conditional rule system built on [`_predicate_value-of`](_predicate_value-of.md) edges. Together these mechanisms form the complete schema language for the dictionary.

---

## Overview

Every term that defines an object type carries a [`_rule`](_rule.md) section. Its mere presence — even empty — signals that the term is an object definition: it describes a structure (an ArangoDB document or embedded object) whose composition is governed by rules. An empty [`_rule`](_rule.md) section means the term is an object definition whose rules are expressed entirely in the graph layer.

When non-empty, the [`_rule`](_rule.md) section holds **unconditional** structural constraints: constraints that apply regardless of property values. Value-dependent constraints are always in the graph layer, never in [`_rule`](_rule.md).

The two layers together form the complete rule system:

| Layer | Mechanism | What it expresses |
|-------|-----------|-------------------|
| [`_rule`](_rule.md) section | Properties of the term object | Unconditional constraints (always-required, always-banned, defaults, etc.) |
| Graph layer | [`_predicate_value-of`](_predicate_value-of.md) edges with [`_path_data`](_path_data.md) | Conditional constraints (rules that activate when a property holds a specific value) |

---

## The [`_rule`](_rule.md) Section

### [`_closed`](_closed.md)

[`_closed`](_closed.md) is the only **required** property in every rule object — both base [`_rule`](_rule.md) sections and conditional rule objects in [`_path_data`](_path_data.md). Its explicit presence eliminates ambiguity: you never need to trace the rule hierarchy to determine whether a schema is open or closed.

- **`_closed: false`** — open schema. Properties outside [`_required`](_required.md) and [`_recommended`](_recommended.md) are accepted without error. Use for schemas that are still evolving or where extensibility is intentional.
- **`_closed: true`** — closed schema. Only properties listed in [`_required`](_required.md) or [`_recommended`](_recommended.md) may be present. Any other property causes a validation error. Use for mature, well-controlled schemas.

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

[`_lid`](_lid.md) must always be present. [`_nid`](_nid.md), [`_gid`](_gid.md), and [`_aid`](_aid.md) are permitted but optional. Any other property is a validation error.

---

### [`_required`](_required.md) and [`_recommended`](_recommended.md) — Disjoint Tiers

[`_required`](_required.md) and [`_recommended`](_recommended.md) together define the **allowed property set**. They are strictly disjoint: a property appears in exactly one or neither, never both.

- **Required** = allowed and mandatory. The validator enforces that required properties are present.
- **Recommended** = allowed and optional. In a closed schema, they form the whitelist alongside required properties. In an open schema, they are advisory.

The allowed set for a closed schema is the union of [`_required`](_required.md) and [`_recommended`](_recommended.md). For an open schema, the allowed set is unconstrained — [`_recommended`](_recommended.md) documents expectations but does not enforce them.

Never list a required property in [`_recommended`](_recommended.md). If a property is required it is already allowed; listing it in [`_recommended`](_recommended.md) is redundant and signals a modelling mistake.

---

### [`_required`](_required.md)

[`_required`](_required.md) contains one or more **selection structures** — each expressing a cardinality constraint over a group of descriptor [`_gid`](_gid.md)s. When multiple structures are present, **all must be satisfied simultaneously** (AND logic). An empty [`_required`](_required.md) object is invalid; at least one selection structure must be present.

[`_required`](_required.md) is evaluated **after** [`_default-value`](_default-value.md) and [`_computed`](_computed.md) are applied. This means a property can be both computed and required: the system sets the value first, and the validator confirms its presence afterwards.

The selection rule combinations and validity constraints are described in detail in [Selection Rule Reference](#selection-rule-reference) below.

---

### [`_recommended`](_recommended.md)

[`_recommended`](_recommended.md) is a **flat array** of descriptor [`_gid`](_gid.md)s. It is never a selection structure.

In a closed schema (`_closed: true`), [`_recommended`](_recommended.md) acts as the optional-property whitelist. Only properties listed here or in [`_required`](_required.md) are allowed; anything else is rejected.

In an open schema (`_closed: false`), [`_recommended`](_recommended.md) is advisory — it documents expected optional properties for form generation and display, but the validator does not reject unlisted properties.

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

### [`_banned`](_banned.md)

[`_banned`](_banned.md) is a flat array of descriptor [`_gid`](_gid.md)s. If any listed property is present in the object, validation fails unconditionally.

[`_banned`](_banned.md) is **absolute**: it takes precedence over all other rules, including conditional graph rules. No [`_predicate_value-of`](_predicate_value-of.md) edge can activate a property that [`_banned`](_banned.md) prohibits. If a conditional rule's [`_path_data`](_path_data.md) requires a banned property, that is a conflict detectable at edge insertion time.

[`_banned`](_banned.md) applies in both open and closed schema modes.

```json
{
    "_rule": {
        "_closed": false,
        "_banned": ["_data", "_rule"]
    }
}
```

An object of this type must never contain [`_data`](_data.md) or [`_rule`](_rule.md), regardless of any other rule.

---

### [`_computed`](_computed.md)

[`_computed`](_computed.md) is an array of descriptor references whose values are automatically set by the system if not explicitly provided. Computed properties are resolved **before** [`_required`](_required.md) is checked, so a property can appear in both [`_computed`](_computed.md) and [`_required`](_required.md): the system sets the value first, and the validator confirms it afterwards.

Computed properties are typically paired with [`_immutable`](_immutable.md) to prevent modification after the system sets them.

```json
{
    "_rule": {
        "_computed": ["_gid", "_key"],
        "_immutable": ["_gid", "_key"]
    }
}
```

[`_gid`](_gid.md) and [`_key`](_key.md) are computed from the [`_code`](_code.md) section and cannot be changed once set.

---

### [`_locked`](_locked.md)

[`_locked`](_locked.md) is an array of descriptor references whose values are entirely managed by the system. Unlike [`_computed`](_computed.md) — where the user may optionally supply the value — locked properties are fully opaque: users cannot set or modify them.

---

### [`_immutable`](_immutable.md)

[`_immutable`](_immutable.md) is an array of descriptor references that, once set (by the user or by the system), cannot be modified or deleted.

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

Identifiers and namespace assignments are immutable once set. Changing them would break all edges that reference the term by its [`_gid`](_gid.md).

---

### [`_default-value`](_default-value.md)

[`_default-value`](_default-value.md) is a key/value dictionary mapping descriptor [`_gid`](_gid.md)s to their default values. Defaults are applied at insertion time **before** [`_required`](_required.md) is checked — this means a property can appear in both [`_default-value`](_default-value.md) and [`_required`](_required.md): if the user omits it, the default fills it in, and validation succeeds.

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

## Selection Rule Reference

A [`_rule_selector`](_rule_selector.md) pairs [`_selection_rules`](_selection_rules.md) with [`_selection_descriptors`](_selection_descriptors.md). Each rule in [`_selection_rules`](_selection_rules.md) applies positionally to one level of [`_selection_descriptors`](_selection_descriptors.md): rule[0] governs the innermost (leaf) array, rule[1] governs the next level out, and so on. This section catalogues all valid and invalid combinations of [`_selection_type`](_selection_type.md) and [`_elements`](_elements.md), and defines the validity constraints that selector-authoring tools and the validator should enforce.

### Notation

- *N* — the number of descriptor keys in the governed set (leaf array).
- *A* — [`_min-items`](_min-items.md) value.
- *B* — [`_max-items`](_max-items.md) value.
- **mandatory** — [`_type_selection_mandatory`](_type_selection_mandatory.md); **optional** — [`_type_selection_optional`](_type_selection_optional.md).

---

### Single-level (flat) selectors

A flat selector has one rule and a flat array of N descriptor keys. The rule applies to all N keys simultaneously.

| [`_selection_type`](_selection_type.md) | [`_elements`](_elements.md) | Effective constraint | Valid when |
|---|---|---|---|
| mandatory | — | All N must be present | N ≥ 1 |
| mandatory | min: A | At least A must be present | 1 ≤ A ≤ N |
| mandatory | max: B | At least 1 and at most B must be present | 1 ≤ B ≤ N |
| mandatory | min: A, max: B | Between A and B must be present | 1 ≤ A ≤ B ≤ N |
| optional | — | Any subset may be present, including none | Always valid; enforces nothing — use only as documentation |
| optional | min: A | At least A must be present | 1 ≤ A ≤ N |
| optional | max: B | At most B may be present (0 to B) | 0 ≤ B ≤ N |
| optional | min: A, max: B | Between A and B may be present | 0 ≤ A ≤ B ≤ N |

**Key distinction**: `mandatory` without [`_elements`](_elements.md) requires *all* N; `optional` without [`_elements`](_elements.md) requires *none*. Both `mandatory, min: 1` and `optional, min: 1` express "at least one must be present" — they are semantically equivalent for flat selectors.

---

### Multi-level (nested) selectors

A nested selector has multiple rules and a nested array of arrays. In the two-level case — which covers nearly all practical uses:

- **Rule[0] (inner)**: governs each participating leaf array — how many items from that array must be selected.
- **Rule[1] (outer)**: governs the collection of leaf arrays — how many leaf arrays must participate (contribute at least one item).

**Common two-level patterns:**

| Rule[0] (inner) | Rule[1] (outer) | Meaning |
|---|---|---|
| mandatory, min: 1, max: 1 | optional, min: 1 | At least one group must participate; from each participating group, exactly one item is chosen (mutual exclusion per group, at least one group required) |
| mandatory, min: 1, max: 1 | mandatory | All groups must participate; from each, exactly one item is chosen |
| optional, max: 1 | optional, min: 1 | At least one group must participate; from each participating group, at most one item may be chosen (or none) |
| mandatory | optional, min: 1 | At least one group must participate; from each participating group, all items must be present |

**The range bound example** (at least one bound, each in its exclusive form):

```json
{
    "_selection_rules": [
        {"_selection_type": "_type_selection_mandatory", "_elements": {"_min-items": 1, "_max-items": 1}},
        {"_selection_type": "_type_selection_optional", "_elements": {"_min-items": 1}}
    ],
    "_selection_descriptors": [
        ["_range_min-inclusive", "_range_min-exclusive"],
        ["_range_max-inclusive", "_range_max-exclusive"]
    ]
}
```

Rule[0] (mandatory, exactly 1): from each participating leaf array, exactly one item must be chosen — inclusive or exclusive, never both. Rule[1] (optional, min 1): at least one leaf array must participate. Together: at least one bound (lower, upper, or both) is required; each chosen bound takes exactly one form.

**Why the order matters**: rule[0] must constrain the leaf level with enough of a lower bound to prevent empty inner selections from passing through to rule[1]. If rule[0] were `optional, max: 1`, it would allow 0 items from each inner array. Rule[1] would then see two groups that each "participated" with zero items and its `_min-items: 1` check would fail — but the failure would be silent at the inner level rather than explicit. The pattern `mandatory, min: 1, max: 1` makes the constraint explicit: a participating group must contribute exactly one item.

---

### Validity rules

Selector-authoring tools and the validator must enforce the following rules at write time.

**Structural:**
1. [`_required`](_required.md) must contain at least one [`_rule_selector`](_rule_selector.md) — an empty array is invalid.
2. Each [`_rule_selector`](_rule_selector.md) must contain both [`_selection_rules`](_selection_rules.md) and [`_selection_descriptors`](_selection_descriptors.md).
3. The number of rules in [`_selection_rules`](_selection_rules.md) must equal the nesting depth of [`_selection_descriptors`](_selection_descriptors.md). A flat array has depth 1; an array of arrays has depth 2.

**Count constraints (per rule):**
4. [`_min-items`](_min-items.md) must be ≥ 0.
5. [`_max-items`](_max-items.md) must be ≥ 1.
6. [`_min-items`](_min-items.md) must be ≤ [`_max-items`](_max-items.md) when both are present.
7. [`_min-items`](_min-items.md) and [`_max-items`](_max-items.md) must not exceed N (the number of items in the governed set).
8. For [`_type_selection_mandatory`](_type_selection_mandatory.md), the effective minimum is at least 1 — a mandatory rule with `_max-items: 0` is contradictory and must be rejected.

**No-op selectors (warn):**
9. [`_type_selection_optional`](_type_selection_optional.md) with no [`_elements`](_elements.md) enforces nothing. At the outer level of a nested selector this means all groups may contribute zero items — the entire selector becomes vacuous. Issue a warning; this is almost always a modelling mistake.
10. [`_type_selection_optional`](_type_selection_optional.md) with `_min-items: 0` is equivalent to optional with no [`_elements`](_elements.md). Issue a warning.

**Unsatisfiable selectors (reject):**
11. [`_type_selection_mandatory`](_type_selection_mandatory.md) with `_max-items: 0` can never be satisfied.
12. `_min-items > N` (more items required than exist in the governed set) can never be satisfied.
13. `_min-items > _max-items` is a contradiction.
14. A [`_rule_selector`](_rule_selector.md) whose [`_selection_rules`](_selection_rules.md) and [`_selection_descriptors`](_selection_descriptors.md) have mismatched depths can never be evaluated correctly.

---

## The Graph Layer — Conditional Rules

Unconditional constraints belong in [`_rule`](_rule.md). Constraints that depend on whether a property is present, or on what value it holds, belong in the graph layer. Two edge predicates carry conditional rules:

| Predicate | Trigger | Rule activation |
|-----------|---------|-----------------|
| [`_predicate_property-of`](_predicate_property-of.md) with non-empty [`_path_data`](_path_data.md) | Property is **present** (any value) | [`_path_data`](_path_data.md) rule applies |
| [`_predicate_value-of`](_predicate_value-of.md) | Property holds a **specific value** | [`_path_data`](_path_data.md) rule applies |

Both predicates use the same accumulation semantics and the same [`_path_data`](_path_data.md) structure.

### The [`_predicate_property-of`](_predicate_property-of.md) Edge and What It Signals

A [`_predicate_property-of`](_predicate_property-of.md) edge declares that [`_from`](_from.md) is a property of the [`_to`](_to.md) schema. Its [`_path_data`](_path_data.md) communicates two distinct things depending on whether it is empty or not:

- **Empty [`_path_data`](_path_data.md) (`{}`)**: the property's values trigger further conditional rules via [`_predicate_value-of`](_predicate_value-of.md). The presence of this edge signals that the property governs schema composition — changing its value may add or remove required or permitted properties.
- **Non-empty [`_path_data`](_path_data.md)**: a rule that activates whenever the property is **present** (any value), in addition to any value-specific conditionals.
- **No edge at all**: the property is passive — its value never changes any schema configuration. Its membership in the schema is declared implicitly by its appearance in the [`_recommended`](_recommended.md) or [`_required`](_required.md) lists of relevant conditionals.

The canonical use for non-empty [`_path_data`](_path_data.md) is **mutual exclusion that cannot be expressed by value resets** — constraints that apply across all possible values of a property and across all possible contexts. The [`_unit`](_unit.md) group is the primary example: [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), and [`_unit-symbol`](_unit-symbol.md) are mutually exclusive regardless of type or kind context, and no value-reset chain can encode this, because the constraint is not tied to any specific value.

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

When [`_unit`](_unit.md) is present, [`_unit-name`](_unit-name.md) and [`_unit-symbol`](_unit-symbol.md) are banned. When [`_unit-name`](_unit-name.md) or [`_unit-symbol`](_unit-symbol.md) is present, [`_unit`](_unit.md) is banned. [`_unit-name`](_unit-name.md) and [`_unit-symbol`](_unit-symbol.md) may coexist (free-text name alongside a symbol, without a formal unit term).

### The [`_predicate_value-of`](_predicate_value-of.md) Edge

A [`_predicate_value-of`](_predicate_value-of.md) edge encodes the statement: *"when property [`_to`](_to.md) holds the value [`_from`](_from.md), within the structural context [`_path`](_path.md), apply the rules in [`_path_data`](_path_data.md)."*

```json
{
    "_from": "terms/_type_string",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_scalar_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_recommended": [
                "_regexp",
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range_string", "_normal-range_string"
            ]
        }
    }
}
```

This edge states: within a [`_scalar`](_scalar.md) structure (path root `terms/_scalar`), when [`_scalar_type`](_scalar_type.md) holds the value [`_type_string`](_type_string.md), only the listed properties are permitted and the schema is closed.

The structural context ([`_path`](_path.md)) is key: the same value can produce different consequences in different contexts. A [`_predicate_value-of`](_predicate_value-of.md) edge for [`_type_string`](_type_string.md) within [`_scalar`](_scalar.md) (path `terms/_scalar`, pointing to `terms/_scalar_type`) is entirely independent of one within [`_dict_key`](_dict_key.md) (path `terms/_dict_key`, pointing to `terms/_dict_key_type`), each with its own [`_path_data`](_path_data.md).

### Conditional Rule Accumulation

When a conditional rule object is evaluated alongside the base [`_rule`](_rule.md), the rules combine according to the closure mode of the **conditional**:

- **Closed conditional** (`_closed: true`): the conditional [`_recommended`](_recommended.md) **replaces** the base [`_recommended`](_recommended.md) entirely. The result is exactly the conditional whitelist.
- **Open conditional** (`_closed: false`): the conditional [`_recommended`](_recommended.md) **accumulates** — it is unioned with the base [`_recommended`](_recommended.md). Any [`_banned`](_banned.md) entries in the conditional remove properties from the effective permitted set.

[`_required`](_required.md) **always accumulates** regardless of closure mode — additional requirements from the conditional are ANDed with the base requirements.

[`_banned`](_banned.md) is always unconditional and absolute in both the base rule and in any conditional rule.

### Evaluation Order

When multiple conditional rules apply simultaneously — for example, a property is present (triggering its `_property-of` rule) and also holds a specific value (triggering a `_value-of` rule) — they are applied in this order:

1. **Base [`_rule`](_rule.md)** — unconditional structural constraints.
2. **Presence rules** — all [`_predicate_property-of`](_predicate_property-of.md) [`_path_data`](_path_data.md) rules for properties currently present in the object, accumulated on top of the base.
3. **Value rules** — all [`_predicate_value-of`](_predicate_value-of.md) [`_path_data`](_path_data.md) rules for the current values of governing properties, accumulated on top of the result so far.

Each layer uses the same closed/open accumulation semantics. [`_banned`](_banned.md) from any layer is unconditional and absolute throughout.

---

## Strategy A — The Self-Sufficient Rule Graph

The rule graph is designed to be **self-sufficient**: validation and UI behaviour derive entirely from the graph, with no out-of-graph knowledge about type semantics.

### When to create an edge

Create a [`_predicate_value-of`](_predicate_value-of.md) edge for a value whenever **the effective allowed property set differs from the base rule**, in either direction — more properties required, fewer properties permitted, or both.

Do not create an edge when the value changes nothing relative to the base rule.

The critical case: a value that permits *fewer* properties than the base [`_recommended`](_recommended.md) whitelist still requires an explicit closed conditional edge. Without it, the validator cannot detect semantically invalid combinations (for example, [`_type_boolean`](_type_boolean.md) with [`_regexp`](_regexp.md)) and the UI has no basis for cleaning up orphaned properties when the governing property changes value.

Consider the [`_scalar`](_scalar.md) structure. Its base `_rule._recommended` lists **all** possible [`_scalar`](_scalar.md) properties across all types — because it must describe the full optional-property whitelist without knowing which type is in force. Without type-specific closed conditionals, a scalar with [`_type_boolean`](_type_boolean.md) that also has [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), and [`_valid-range`](_valid-range.md) would pass structural validation silently.

**Passive properties** are properties whose presence never triggers any rule and whose values never govern schema composition. They have no [`_predicate_property-of`](_predicate_property-of.md) edge. Their membership in the schema is declared implicitly by their appearance in the [`_recommended`](_recommended.md) lists of the conditionals that permit them. In [`_scalar`](_scalar.md), passive properties include [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), `_valid-range`, [`_normal-range`](_normal-range.md), [`_valid-range_string`](_valid-range_string.md), and [`_normal-range_string`](_normal-range_string.md) — they appear in the [`_recommended`](_recommended.md) lists of the type conditionals that allow them, but no presence-triggered rule depends on their presence and their values trigger no further conditionals.

**Consequence**: you cannot discover all properties of a schema by traversing [`_predicate_property-of`](_predicate_property-of.md) edges alone. Tooling that inspects schema membership (graph browser, schema inspector) must also read the [`_recommended`](_recommended.md) lists in the rule conditionals to get the full picture.

Create a [`_predicate_property-of`](_predicate_property-of.md) edge only when:
1. The property has a **presence-triggered rule** (non-empty [`_path_data`](_path_data.md)) — the [`_unit`](_unit.md) mutual exclusion group is the canonical example.
2. The property's values trigger further conditional rules via [`_predicate_value-of`](_predicate_value-of.md) — i.e., it governs schema composition, like [`_scalar_type`](_scalar_type.md).

### Closed vs open conditionals

- Use **`_closed: true`** when the value defines a specific, bounded allowed set. The conditional [`_recommended`](_recommended.md) becomes the complete optional-property whitelist for that value, replacing the base. This is the **reset** mechanism.
- Use **`_closed: false`** for **presence-triggered rules** on [`_predicate_property-of`](_predicate_property-of.md) edges — where a constraint (typically a ban) must apply without replacing the whitelist.

For all value-triggered conditionals in [`_scalar`](_scalar.md), use `_closed: true`. Each type value ([`_type_boolean`](_type_boolean.md), [`_type_number_float`](_type_number_float.md), [`_type_string_Markdown`](_type_string_Markdown.md), [`_type_key_term`](_type_key_term.md), etc.) gets its own closed conditional that fully resets the optional-property whitelist for that type. The reset pattern is flat — there are no nested kind-level refinements. The effective optional properties are exactly those listed in the conditional's [`_recommended`](_recommended.md):

- Types that accept no optional properties (e.g. [`_type_boolean`](_type_boolean.md), [`_type_key_term`](_type_key_term.md), [`_type_struct`](_type_struct.md)) include no [`_recommended`](_recommended.md) — absent [`_recommended`](_recommended.md) in a closed conditional means the optional whitelist is reset to empty.
- Types that accept unit and range properties (e.g. [`_type_number`](_type_number.md), [`_type_number_float`](_type_number_float.md)) list those explicitly.
- [`_type_number_integer`](_type_number_integer.md) is like [`_type_number_float`](_type_number_float.md) but omits [`_decimals`](_decimals.md), which is not meaningful for integers.

### On value change

When a governing property changes value (e.g. [`_scalar_type`](_scalar_type.md) changes from [`_type_string`](_type_string.md) to [`_type_boolean`](_type_boolean.md)), the UI performs this procedure:

1. Compute the old effective schema: base rule → presence rules → old value's conditional.
2. Compute the new effective schema: base rule → presence rules → new value's conditional.
3. Diff: properties in the old allowed set but not the new are now orphaned.
4. Offer to remove orphaned properties — do not silently delete them, since the user may be exploring and intend to revert.

This procedure works correctly only when every value that restricts the allowed set has an explicit closed conditional edge. If a value has no edge, the system cannot determine the difference between "this value allows all optional properties" and "this value's rule was never authored".

---

## Example — [`_scalar`](_scalar.md) Rule Graph

The [`_scalar`](_scalar.md) structure is the canonical example of a self-sufficient rule graph. The base [`_rule`](_rule.md) section covers unconditional constraints; the graph layer covers all type-specific constraints.

**Base [`_rule`](_rule.md)** (in the [`_scalar`](_scalar.md) term):

```json
{
    "_rule": {
        "_closed": true,
        "_required": {
            "_selection-descriptors_all": ["_scalar_type"]
        },
        "_recommended": [
            "_kind_enum", "_kind_object",
            "_unit", "_unit-name", "_unit-symbol",
            "_regexp", "_decimals",
            "_valid-range", "_valid-range_string",
            "_normal-range", "_normal-range_string"
        ]
    }
}
```

[`_scalar_type`](_scalar_type.md) must always be present. The broad [`_recommended`](_recommended.md) list is the union of all properties any type could ever use — it establishes what is *possible* in a [`_scalar`](_scalar.md) object. The type-specific conditionals then reset this to the exact whitelist appropriate for each type value.

**Conditional edge for [`_type_boolean`](_type_boolean.md)**:

```json
{
    "_from": "terms/_type_boolean",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_scalar_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true
        }
    }
}
```

[`_type_boolean`](_type_boolean.md) permits no optional properties. The closed conditional replaces the base [`_recommended`](_recommended.md) with an empty whitelist. (There is no [`_recommended`](_recommended.md) key — absent [`_recommended`](_recommended.md) in a closed conditional means reset to empty.) The base [`_required`](_required.md) still applies: [`_scalar_type`](_scalar_type.md) remains required.

**Conditional edge for [`_type_number`](_type_number.md)**:

```json
{
    "_from": "terms/_type_number",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_scalar_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_recommended": [
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range", "_normal-range", "_decimals"
            ]
        }
    }
}
```

When [`_scalar_type`](_scalar_type.md) is [`_type_number`](_type_number.md), the optional properties are reset to unit, range, and decimal controls. [`_kind_enum`](_kind_enum.md), `_kind_object`, [`_regexp`](_regexp.md), and string ranges from the base [`_recommended`](_recommended.md) are no longer in the whitelist.

**Conditional edge for [`_type_number_integer`](_type_number_integer.md)**:

```json
{
    "_from": "terms/_type_number_integer",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_scalar_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_recommended": [
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range", "_normal-range"
            ]
        }
    }
}
```

[`_type_number_integer`](_type_number_integer.md) omits [`_decimals`](_decimals.md) from the whitelist — integer values have no fractional part, so [`_decimals`](_decimals.md) is not meaningful. The mutual exclusion between [`_type_number_float`](_type_number_float.md) (which permits [`_decimals`](_decimals.md)) and [`_type_number_integer`](_type_number_integer.md) (which does not) is handled entirely by the reset pattern, not by bans.

**Conditional edge for [`_type_string`](_type_string.md)**:

```json
{
    "_from": "terms/_type_string",
    "_predicate": "_predicate_value-of",
    "_to": "terms/_scalar_type",
    "_path": ["terms/_scalar"],
    "_path_data": {
        "terms/_scalar": {
            "_closed": true,
            "_recommended": [
                "_regexp",
                "_unit", "_unit-name", "_unit-symbol",
                "_valid-range_string", "_normal-range_string"
            ]
        }
    }
}
```

Generic strings permit a validation [`_regexp`](_regexp.md) and string ranges. Format-specific string types (e.g. [`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_date`](_type_string_date.md), [`_type_string_URI`](_type_string_URI.md)) each have their own conditional. Most have an empty whitelist because their format is self-defining; date/time types additionally permit `_valid-range_string` and `_normal-range_string`.

---

## Relationship to Term Cards

Each term that defines a structural concept — such as [`_rule`](_rule.md), [`_required`](_required.md), [`_closed`](_closed.md), [`_banned`](_banned.md) — has a corresponding term card in the `docs/` directory, alongside this document. Term cards are generated automatically by the `term-cards` workflow from the source JSON in `data/core/`. Images are stored in `docs/images/`. To understand any specific rule property in detail, consult its card directly. To understand how the rule system works as a whole, this document is the primary reference.
