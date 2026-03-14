# `_set`

**`_title`**

Set

**`_definition`**

The shape property for an unordered list of unique elements of the same comparable type. When empty, the set may contain elements of any comparable type.

**`_description`**

This property defines the *shape* and *type* of a *set* — an unordered list of *unique* values of the *same comparable type*. Because uniqueness requires comparability, set elements are restricted to comparable scalar types: [booleans](_type_boolean.md), [numbers](_type_number.md), [timestamps](_type_timestamp.md), and all [string variants](_type_string.md). Struct and object types are excluded as they are not comparable.

The optional [_set_scalar](_set_scalar.md) property defines the element type using [_set_type](_set_type.md) along with optional constraints such as [`_kind_number`](_kind_number.md), [`_kind_string`](_kind_string.md), [`_kind_key`](_kind_key.md), [`_kind_enum`](_kind_enum.md), [`_valid-range`](_valid-range.md), or [`_regexp`](_regexp.md). When `_set_scalar` is absent, the set accepts any comparable type.

The optional [_elements](_elements.md) property constrains the minimum and maximum number of items in the set.

**`_examples`**

```json
{
	"_set": {
		"_set_scalar": {
			"_set_type": "_type_boolean"
		}
	}
}
```
This example describes a set of [booleans](_type_boolean.md). Since boolean has only two distinct values, such a set can contain at most two elements: `true` and `false`.



```json
{
	"_set": {
		"_elements": {
			"_min-items": 1
		},
		"_set_scalar": {
			"_set_type": "_type_number",
			"_kind_number": ["_kind_number_integer"]
		}
	}
}
```
This example describes a set of unique [integer](_kind_number_integer.md) values; the set cannot be empty.



```json
{
	"_set": {
		"_set_scalar": {
			"_set_type": "_type_number",
			"_kind_number": ["_kind_number_float"],
			"_valid-range": {
				"_min-range-inclusive": 0.0,
				"_max-range-exclusive": 100.0
			},
			"_unit": "_unit_length_cm"
		}
	}
}
```
This example describes a set of unique [floating-point](_kind_number_float.md) numeric values greater than or equal to `0.0` and less than `100.0`, representing lengths in [centimetres](_unit_length_cm.md). The set can have any number of elements.



```json
{
	"_set": {
		"_elements": {
			"_max-items": 3
		},
		"_set_scalar": {
			"_set_type": "_type_enum",
			"_kind_enum": ["iso_639_3"]
		}
	}
}
```
This example describes a set of [enumeration](_type_enum.md) values that must be chosen from the [ISO 639-3](iso_639_3.md) controlled vocabulary of language codes. The set may contain at most 3 unique elements.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_set"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_banned" : [
    "_scalar",
    "_array",
    "_set",
    "_tuple",
    "_dict"
  ],
  "_recommended" : [
    "_elements"
  ],
  "_required" : {
    "_selection-descriptors_one-none" : [
      "_set_scalar"
    ]
  }
}
```
