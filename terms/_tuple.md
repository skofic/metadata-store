# `_tuple`

**`_title`**

Tuple

**`_definition`**

A data shape for an ordered list of values where each position may hold a different data type. The required [`_type_tuple`](_type_tuple.md) property is an ordered array of descriptor [`_gid`](_gid.md)s; the type at position n is determined by the descriptor at index n. Unlike [`_array`](_array.md) and [`_set`](_set.md), which apply a single type uniformly to all elements, a tuple is positional.

**`_description`**

A tuple is an ordered sequence of values in which each element may have a distinct data type, determined by its position. This makes it suitable for encoding structured records — such as coordinate pairs, measurement bundles, or fixed-format rows — where the meaning and type of each slot are predefined.

**Type resolution via indirection**: the type of position n is not written inline. Instead, [`_type_tuple`](_type_tuple.md) holds the [`_gid`](_gid.md) of a descriptor term at each index, and the type for that position is resolved by reading that descriptor's [`_data`](_data.md) section. This means tuple positions reuse existing dictionary definitions rather than duplicating type information.

**Length control**: the length of [`_type_tuple`](_type_tuple.md) sets the absolute upper bound on the number of tuple elements. The optional [`_elements`](_elements.md) property can further constrain the length by setting [`_min-items`](_min-items.md) and [`_max-items`](_max-items.md). When [`_elements`](_elements.md) is omitted, the tuple must contain exactly as many elements as there are entries in [`_type_tuple`](_type_tuple.md). When the tuple contains fewer elements than [`_type_tuple`](_type_tuple.md), the trailing positions are not applied — the tuple is treated as a prefix of the full type sequence.

**`_examples`**

**Fixed-length tuple** — a coordinate pair with exactly two elements:

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

The first element must conform to the `longitude_decimal` descriptor's type; the second to `latitude_decimal`. Exactly two elements are required.



**Variable-length tuple** — a location record where the first three elements are required and the fourth is optional:

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

The latitude, longitude, and datum are always required; the area is optional. A value with three elements is valid; one with five is not.

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
