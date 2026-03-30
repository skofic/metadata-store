# `_predicate_value-of`

**`_title`**

Value of

**`_definition`**

The source term is a possible value of the destination property within a specific structural context. When the property holds this value, the rules in `_path_data` are activated. Used to implement value-triggered conditional schema constraints.

**`_description`**

`_predicate_value-of` is the mechanism for value-triggered conditional rules. An edge with this predicate states: within the structural context identified by [`_path`](_path.md), when [`_to`](_to.md) (the property) holds the value [`_from`](_from.md), apply the rules in [`_path_data`](_path_data.md).

The edge encodes four things in one record:

- **What** — `_from`: the value that triggers the rule.
- **Of which property** — `_to`: the property being tested.
- **In which context** — `_path`: the structural context (schema root handle).
- **With what consequences** — `_path_data[path_root]`: the conditional rule object.

Create a `_predicate_value-of` edge for a value whenever **the effective allowed property set differs from the base rule** in either direction — more properties required, fewer permitted, or both. Do not create an edge when the value changes nothing relative to the base rule.

The conditional rule object in `_path_data` must include [`_closed`](_closed.md):

- **`_closed: true`**: replaces the base [`_recommended`](_recommended.md) entirely; the rule's `_recommended` becomes the complete optional-property whitelist for that value context.
- **`_closed: false`**: accumulates — unions with the base `_recommended`; `_banned` entries conditionally remove properties.

[`_required`](_required.md) always accumulates regardless of closure mode. The same value may produce different conditional rules in different structural contexts: a `_predicate_value-of` edge for [`_type_enum`](_type_enum.md) in [`_scalar`](_scalar.md) (path root `terms/_scalar`) is a separate edge from one in [`_dict_key`](_dict_key.md) (path root `terms/_dict_key`).

The rule graph is designed to be **self-sufficient**: both the validator and the UI derive behaviour entirely from the graph, with no out-of-graph knowledge about type semantics.

**`_examples`**

When [`_scalar_type`](_scalar_type.md) holds [`_type_enum`](_type_enum.md), the [`_enum_types`](_enum_types.md) property becomes permitted:

```json
{
	"_from": "terms/_type_enum",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_scalar_type",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": true,
			"_required": [
				{
					"_selection_rules": [{"_selection_type": "_type_selection_mandatory"}],
					"_selection_descriptors": ["_scalar_type"]
				}
			],
			"_recommended": ["_enum_types", "_unit", "_unit-name", "_unit-symbol"]
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "value-of"
  ],
  "_gid" : "_predicate_value-of",
  "_lid" : "value-of",
  "_nid" : "_predicate"
}
```
