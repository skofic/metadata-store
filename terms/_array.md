# `_array`

**`_title`**

Array

**`_definition`**

The shape property for an ordered list of elements of the same type. When empty, the array may contain any number of elements of any type.

**`_description`**

This property defines the *shape* and *type* of an *array* — an ordered list of values of the *same type*. Values may be *repeated* and the type definition applies to *every element* in the list.

The property may contain *at most one* of the following shape sub-properties, defining the element type:

- [Scalar elements](_scalar.md): Each element is a scalar value.
- [Array elements](_array.md): Each element is itself an array (nested arrays).
- [Set elements](_set.md): Each element is a set.
- [Tuple elements](_tuple.md): Each element is a tuple.
- [Dictionary elements](_dict.md): Each element is a key/value dictionary.

The optional [_elements](_elements.md) property constrains the minimum and maximum number of items in the array.

When the property is an *empty object*, the array may contain any number of elements of any shape or type.

**`_examples`**

```json
{
	"_array": {
		"_elements": {
			"_min-items": 1,
			"_max-items": 5
		},
		"_scalar": {
			"_type": "_type_number",
			"_kind_number": ["_kind_number_integer"],
			"_valid-range": {
				"_min-range-inclusive": 5,
				"_max-range-inclusive": 10
			}
		}
	}
}
```

This example describes an array of [scalar](_scalar.md) [integer](_kind_number_integer.md) values in the range from `5` to `10` inclusive. The array must have at least 1 element and at most 5 elements.



```json
{
	"_array": {
		"_array": {
			"_elements": {
				"_min-items": 0,
				"_max-items": 10
			},
			"_scalar": {
				"_type": "_type_number",
				"_kind_number": ["_kind_number_float"],
				"_valid-range": {
					"_min-range-inclusive": 0.0,
					"_max-range-exclusive": 100.0
				},
				"_unit-symbol": "cm.",
				"_unit-name": {"ISO_639_3_eng": "Centimeters"}
			}
		}
	}
}
```

This example describes a list of arrays of [floating-point](_kind_number_float.md) numeric values greater than or equal to `0.0` and less than `100.0`, representing lengths in [centimetres](_unit_length_cm.md).

This example shows two levels of nested arrays. The top level array may have any number of elements; the second level array can be empty but must have at most 10 elements.



```json
{
	"_array": {
		"_set": {
			"_set_scalar": {
				"_set_type": "_type_enum",
				"_kind_enum": ["ISO_639_3"]
			}
		}
	}
}
```

This example describes an array of [sets](_set.md) whose elements are [enumeration](_type_enum.md) values from the [ISO 639-3](ISO_639_3.md) controlled vocabulary of language codes.

The array, and the set, may have any number of elements.



```json
{
	"_array": {
		"_dict": {
			"_dict_key": {
				"_type_key": "_type_enum",
				"_kind_enum": ["ISO_3166_1"]
			},
			"_dict_value": {
				"_scalar": {
					"_type": "_type_object",
					"_kind_object": ["my_struct_definition"]
				}
			}
		}
	}
}
```

This example describes an array of [key/value dictionaries](_dict.md). The [dictionary keys](_dict_key.md) are [enumeration](_type_enum.md) values from the [ISO 3166-1](ISO_3166_1.md) country code vocabulary. The dictionary values are [objects](_type_object.md) conforming to the `my_struct_definition` schema.

In this example the array may have any number of elements.



```json
{
	"_array": {}
}
```

This example describes an array that may contain any number of elements of any shape or type.

---

**`_code`**

```json
{
  "_aid" : [
    "array"
  ],
  "_gid" : "_array",
  "_lid" : "array",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_array"
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
    "_selection-descriptors_one-none" : [
      "_scalar",
      "_array",
      "_set",
      "_tuple",
      "_dict"
    ]
  }
}
```
