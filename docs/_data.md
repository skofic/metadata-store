# `_data`

**`_title`**

Data Section

**`_definition`**

The section of a term that describes the type and shape of the data the term represents. When empty, the descriptor accepts any value without type constraints. When non-empty, exactly one shape property is present.

**`_description`**

The data section is present on descriptor terms — terms that represent a typed data variable. It defines the *shape* of the data: whether the value is a scalar, an array, a set, a tuple, a nested array, a dictionary, or a reference to a typedef term.

At most one shape property may be present. When the section is an **empty object** (`{}`), the descriptor accepts any value of any shape and type without constraint.

The six inline shapes are:

- [`_scalar`](_scalar.md) — a single indivisible value
- [`_array`](_array.md) — an ordered list of values of the same type
- [`_nested`](_nested.md) — a recursively nested array whose leaf elements are of a comparable type
- [`_set`](_set.md) — an unordered list of unique comparable values
- [`_tuple`](_tuple.md) — an ordered list where each position may have a different type
- [`_dict`](_dict.md) — a key/value dictionary with explicitly typed keys and values

The seventh option is [`_typedef`](_typedef.md), a reference to an existing typedef term that supplies the shape by delegation rather than inline definition. It is mutually exclusive with all six inline shapes.

**`_examples`**

A descriptor that accepts any value (empty data section):

```json
{
	"_data": {}
}
```

A descriptor for a floating-point number:

```json
{
	"_data": {
		"_scalar": {
			"_scalar_type": "_type_number_float",
			"_unit": "_unit_length_cm",
			"_decimals": 2
		}
	}
}
```

A descriptor referencing a typedef:

```json
{
	"_data": {
		"_typedef": "_info_string"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "data",
	"_gid": "_data",
	"_aid": ["data"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_data"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_required": [
		{
			"_selection_rules": [
				{
					"_selection_type": "_type_selection_optional",
					"_elements": {
						"_max-items": 1
					}
				}
			],
			"_selection_descriptors": [
				"_scalar",
				"_array",
				"_nested",
				"_set",
				"_tuple",
				"_dict",
				"_typedef"
			]
		}
	]
}
```

**`_domn`**

```json
{}
```
