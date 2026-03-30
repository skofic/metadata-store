# `_tuple`

**`_title`**

Tuple

**`_definition`**

The shape property for an ordered list in which each position may have a different data type. The required `_tuple_type` property is an ordered list of descriptor `_gid`s defining the expected type at each position.

**`_description`**

A *tuple* is a fixed-structure ordered list where the type at each position is independently defined. Unlike an [`_array`](_array.md), which applies a uniform element type to all positions, a tuple assigns a distinct type to each index. The type at position *n* is defined by the descriptor referenced at position *n* in [`_tuple_type`](_tuple_type.md) — the shape of that descriptor's [`_data`](_data.md) section governs the expected value.

The optional [`_elements`](_elements.md) property constrains how many elements the tuple value may contain. The length of `_tuple_type` is the absolute upper bound: neither [`_min-items`](_min-items.md) nor [`_max-items`](_max-items.md) may exceed it. When `_elements` is absent, the tuple must contain exactly as many elements as `_tuple_type`. When the tuple contains fewer elements than `_tuple_type`, the types for the trailing positions are not applied — the value is treated as a prefix of the full type sequence.

**`_examples`**

A tuple of ISO 3166 country code, birth date, and body weight — all three positions required:

```json
{
	"_tuple": {
		"_tuple_type": [
			"ISO_3166_1_FRA",
			"chr_birth_date",
			"chr_body_weight"
		]
	}
}
```

The same tuple where at least the country code is required (1 to 3 elements):

```json
{
	"_tuple": {
		"_tuple_type": [
			"ISO_3166_1_FRA",
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

**`_code`**

```json
{
	"_nid": "",
	"_lid": "tuple",
	"_gid": "_tuple",
	"_aid": ["tuple"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_tuple"]
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
				{"_selection_type": "_type_selection_mandatory"}
			],
			"_selection_descriptors": ["_tuple_type"]
		}
	],
	"_recommended": ["_elements"]
}
```

**`_domn`**

```json
{}
```
