# `_tuple`

**`_title`**

Tuple

**`_definition`**

The shape property for an ordered list of elements where each position may have a different type. The type at each position is determined by the descriptor referenced at the corresponding index of the types list.

**`_description`**

A *tuple* is an *ordered list* in which *each element* may have a *different type* depending on its *position*. It is one of the top-level data shapes alongside [scalar](_scalar.md), [array](_array.md), [set](_set.md), and [dictionary](_dict.md).

A tuple requires the [_tuple_types](_tuple_types.md) property: an ordered array of descriptor [global identifiers](_gid.md) that defines the expected type at each position. The type at position *n* is resolved by looking up the descriptor at index *n* in `_tuple_types` and reading its `_data` section.

The optional [_elements](_elements.md) property constrains how many elements a tuple value may contain. The [minimum](_min-items.md) must be at least 1; the [maximum](_max-items.md) cannot exceed the length of `_tuple_types`. When `_elements` is omitted, the tuple must contain exactly as many elements as there are entries in `_tuple_types`.

**`_examples`**

```json
{
	"_tuple": {
		"_tuple_types": [
			"longitude_decimal",
			"latitude_decimal"
		]
	}
}
```

This example describes a pair of coordinates where the first element is a decimal longitude and the second is a decimal latitude. The value must contain exactly two elements.



```json
{
	"_tuple": {
		"_elements": {
			"_min-items": 3,
			"_max-items": 4
		},
		"_tuple_types": [
			"latitude_DMS",
			"longitude_DMS",
			"geodetic-datum",
			"area"
		]
	}
}
```

This example describes a tuple of 3 or 4 elements: a DMS latitude, a DMS longitude, a geodetic datum, and an optional surface area. The first three elements are required; the fourth is optional.

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
    "_type" : "_type_object"
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
    "_selection-descriptors_all" : [
      "_tuple_types"
    ]
  }
}
```
