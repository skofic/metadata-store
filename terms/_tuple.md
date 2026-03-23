# `_tuple`

**`_title`**

Tuple

**`_definition`**

The shape property for an ordered list of elements where each position may have a different type. The required [`_type_tuple`](_type_tuple.md) property is an ordered array of descriptor global identifiers; the type at position n is determined by the descriptor at index n.

**`_description`**

A *tuple* is an *ordered list* in which each element may have a *different type* depending on its *position*. It differs from [`_array`](_array.md) and [`_set`](_set.md), which apply a single type uniformly to all elements.

The required [`_type_tuple`](_type_tuple.md) property contains an ordered array of descriptor [global identifiers](_gid.md). The type at position *n* is resolved by looking up the descriptor at index *n* and reading its [`_data`](_data.md) section. This indirection means tuple positions reuse existing descriptor definitions rather than duplicating type information inline.

The optional [`_elements`](_elements.md) property constrains how many elements a tuple value may contain. The length of [`_type_tuple`](_type_tuple.md) is the absolute upper bound; neither [`_min-items`](_min-items.md) nor [`_max-items`](_max-items.md) may exceed it. When [`_elements`](_elements.md) is omitted, the tuple must contain exactly as many elements as [`_type_tuple`](_type_tuple.md) has entries. When fewer elements are present, the trailing positions are not applied — the tuple is treated as a prefix of the full type sequence.

**`_examples`**

A coordinate pair — exactly two elements:

```json
{
	"_tuple": {
		"_type_tuple": [
			"longitude_decimal",
			"latitude_decimal"
		]
	}
}
```



A location record with an optional surface area — three required elements, fourth optional:

```json
{
	"_tuple": {
		"_elements": {
			"_min-items": 3,
			"_max-items": 4
		},
		"_type_tuple": [
			"latitude_DMS",
			"longitude_DMS",
			"geodetic_datum",
			"area"
		]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "tuple"
  ],
  "_gid" : "_tuple",
  "_lid" : "tuple",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_tuple"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_elements"
  ],
  "_required" : {
    "_selection-descriptors_one" : [
      "_type_tuple"
    ]
  }
}
```
