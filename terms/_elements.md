# `_elements`

**`_title`**

Element count range

**`_definition`**

An object constraining the minimum and maximum number of elements in an array, set, tuple, or nested array. At least one of `_min-items` or `_max-items` must be present.

**`_description`**

`_elements` constrains the cardinality of a collection. It may be added to [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), and [`_tuple`](_tuple.md) sections, and may also be used alongside [`_typedef`](_typedef.md) in an `_array` context.

At least one of [`_min-items`](_min-items.md) or [`_max-items`](_max-items.md) must be present — an empty `_elements` object is invalid. Omitting one bound leaves that end of the interval open: an absent `_min-items` means the collection may be empty; an absent `_max-items` means no upper limit is imposed.

For `_tuple`, the length of [`_tuple_type`](_tuple_type.md) acts as an absolute upper bound that neither `_min-items` nor `_max-items` may exceed.

**`_examples`**

An array must contain between 1 and 10 elements:

```json
{
	"_elements": {
		"_min-items": 1,
		"_max-items": 10
	}
}
```

An array must contain at least 1 element (no upper limit):

```json
{
	"_elements": {
		"_min-items": 1
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "elements",
	"_gid": "_elements",
	"_aid": ["elements"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_elements"]
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
						"_min-items": 1
					}
				}
			],
			"_selection_descriptors": [
				"_min-items",
				"_max-items"
			]
		}
	]
}
```

**`_domn`**

```json
{}
```
