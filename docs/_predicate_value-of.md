# Value of
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_value-of</code></p>

> The source term is a possible value of the destination property within a specific structural context. When the property holds this value, the rules in `_path_data` are activated. Used to implement value-triggered conditional schema constraints.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `value-of` |
| [Global identifier](_gid.md) | `_predicate_value-of` |
| [Official identifiers](_aid.md) | `value-of` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Value of

**[Definition](_definition.md):** The source term is a possible value of the destination property within a specific structural context. When the property holds this value, the rules in `_path_data` are activated. Used to implement value-triggered conditional schema constraints.

**[Description](_description.md)**

`_predicate_value-of` is the mechanism for value-triggered conditional rules. An edge with this predicate states: within the structural context identified by [`_path`](_path.md), when [`_to`](_to.md) (the property) holds the value [`_from`](_from.md), apply the rules in [`_path_data`](_path_data.md).

The edge encodes four things in one record:

- **What** — `_from`: the value that triggers the rule.
- **Of which property** — `_to`: the property being tested.
- **In which context** — `_path`: the structural context (schema root handle).
- **With what consequences** — `_path_data[path_root]`: the conditional rule object.

Create a `_predicate_value-of` edge for a value whenever **the effective allowed property set differs from the base rule** in either direction — more properties required, fewer permitted, or both. Do not create an edge when the value changes nothing relative to the base rule.

The conditional rule object in `_path_data` is keyed by the graph root handle and uses the same form as an object schema constraint:

- **`_closed: {...}`**: replaces the base [`_recommended`](_recommended.md) entirely; the constraint's `_recommended` becomes the complete optional-property whitelist for that value context.
- **`_open: {...}`**: accumulates — unions with the base `_recommended`; `_banned` entries conditionally remove properties.

[`_required`](_required.md) always accumulates regardless of closure mode. The same value may produce different conditional rules in different structural contexts: a `_predicate_value-of` edge for [`_type_enum`](_type_enum.md) in [`_scalar`](_scalar.md) (path root `terms/_scalar`) is a separate edge from one in [`_dict_key`](_dict_key.md) (path root `terms/_dict_key`).

The rule graph is designed to be **self-sufficient**: both the validator and the UI derive behaviour entirely from the graph, with no out-of-graph knowledge about type semantics.

**[Examples](_examples.md)**

When [`_scalar`](_scalar.md) contains the key [`_number_integer`](_number_integer.md), `_decimals` is banned (integers have no decimal part) and the recommended companion properties are restricted to numeric range and unit properties only:

```json
{
	"_from": "terms/_number_integer",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": {
				"_recommended": [
					"_unit",
					"_unit_name",
					"_unit_symbol",
					"_range_valid",
					"_range_normal"
				],
				"_banned": ["_decimals"]
			}
		}
	}
}
```

`_closed` replaces the base recommended set; `_banned` removes `_decimals` unconditionally. The rule applies only within the `terms/_scalar` schema context.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Value of"
  }
}
```

</details>
