# `_predicate_value-of`

**`_title`**

Value of

**`_definition`**

The source node is a possible value of the destination property; used to encode value-conditional rules in a specific structural context.

**`_description`**

This [predicate](_predicate.md) encodes *conditional rules*: constraints that activate only when a specific property holds a specific value within a specific structural context. The [source](_from.md) is the value, the [destination](_to.md) is the property, the [path](_path.md) is the structural context (graph root), and the `_path_data[root_handle]` object contains the rules that apply when the condition is met.

The [`_path_data`](_path_data.md) value at the graph root key follows the same format as the [`_rule`](_rule.md) section: it may contain [`_required`](_required.md), [`_recommended`](_recommended.md), [`_banned`](_banned.md), and [`_closed`](_closed.md). The system resolves these conditional rules after the unconditional [`_rule`](_rule.md) section and merges their constraints into the validation context.

Conditional rules modify the effective constraint set in either direction. A **closed** conditional rule (`_closed: true`) replaces the base [`_recommended`](_recommended.md) whitelist entirely — the conditional's [`_recommended`](_recommended.md) becomes the complete optional-property whitelist for that value context, which may be narrower than the base. An **open** conditional rule (`_closed: false`) accumulates: it adds to [`_required`](_required.md) and unions with [`_recommended`](_recommended.md). [`_banned`](_banned.md) in a conditional rule removes properties from the effective permitted set. No conditional rule can lift a [`_banned`](_banned.md) constraint declared in the base [`_rule`](_rule.md) section.

**`_examples`**

```json
{
	"_from": "terms/_type_scalar",
	"_predicate": "_predicate_property-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {}
},
{
	"_from": "terms/_type_number_float",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_type_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_closed": true,
			"_recommended": ["_unit", "_unit-name", "_unit-symbol", "_decimals", "_valid-range", "_normal-range"]
		}
	}
}
```

The first edge declares [`_type_scalar`](_type_scalar.md) as a property of the [`_scalar`](_scalar.md) object. The second edge states: within the [`_scalar`](_scalar.md) context, when [`_type_scalar`](_type_scalar.md) holds the value [`_type_number_float`](_type_number_float.md), only the listed properties are additionally permitted (closed conditional — replaces the base [`_recommended`](_recommended.md)).

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
