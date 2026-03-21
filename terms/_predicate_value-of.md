# `_predicate_value-of`

**`_title`**

Value of

**`_definition`**

The source node is a possible value of the destination property; used to encode value-conditional rules in a specific structural context.

**`_description`**

This [predicate](_predicate.md) encodes *conditional rules*: constraints that activate only when a specific property holds a specific value within a specific structural context. The [source](_from.md) is the value, the [destination](_to.md) is the property, the [path](_path.md) is the structural context (graph root), and the `_path_data[root_handle]` object contains the rules that apply when the condition is met.

The [`_path_data`](_path_data.md) value at the graph root key follows the same format as the [`_rule`](_rule.md) section: it may contain [`_required`](_required.md), [`_recommended`](_recommended.md), [`_banned`](_banned.md), and other rule properties. The system resolves these conditional rules after the unconditional `_rule` section and merges their constraints into the validation context.

Conditional rules can only *add* constraints — they may require additional properties or expand the recommended set. They cannot remove a `_banned` constraint or override a structural-level rule.

**`_examples`**

```json
{
	"_from": "terms/_type",
	"_predicate": "_predicate_property-of",
	"_to": "terms/_scalar",
	"_path": ["terms/_scalar"],
	"_path_data": {}
},
{
	"_from": "terms/_type_number",
	"_predicate": "_predicate_value-of",
	"_to": "terms/_type",
	"_path": ["terms/_scalar"],
	"_path_data": {
		"terms/_scalar": {
			"_required": {
				"_selection-descriptors_all": ["_kind_number"]
			}
		}
	}
}
```

The first edge declares [`_type`](_type.md) as a property of the [`_scalar`](_scalar.md) object. The second edge states: within the `_scalar` context, when `_type` holds the value [`_type_number`](_type_number.md), the [`_kind_number`](_kind_number.md) property becomes required.

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
