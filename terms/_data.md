# `_data`

**`_title`**

Data Section

**`_definition`**

The section of a term that defines the shape and data type of the value the term represents. Its presence marks the term as a descriptor — a typed data variable. When empty, the descriptor accepts a value of any shape and type.

**`_description`**

Any term that carries this section is a [descriptor](_term_descriptor.md). A term may simultaneously be a descriptor, an object definition, an enumeration element, or a namespace — these roles are not mutually exclusive. This object may contain *at most one* of the following shape properties (it may also be empty, in which case the descriptor accepts any shape and type):

- [Scalar shape](_scalar.md): Defines the *data type* and *constraints* for a *scalar value*.
- [Array shape](_array.md): Defines the *data type* and *constraints* for an *ordered list* of values of the *same type*.
- [Set shape](_set.md): Defines the *data type* and *constraints* for an *unordered list* of *unique* values of the *same type*.
- [Tuple shape](_tuple.md): Defines the *data type* for each position of an *ordered list* where each element may have a *different type*.
- [Dictionary shape](_dict.md): Defines the *key* and *value* types and *constraints* for a *key/value dictionary*.

**`_examples`**

```json
{
	"_data": {
		"_scalar": {
			"_type_scalar": "_type_number_integer",
			"_valid-range": {
				"_min-range-inclusive": 5,
				"_max-range-inclusive": 10
			}
		}
	}
}
```

The above example describes a [scalar](_scalar.md) [integer](_type_number_integer.md) value in the range from `5` to `10` inclusive.



```json
{
	"_data": {
		"_array": {
			"_scalar": {
				"_type_scalar": "_type_number_float",
				"_valid-range": {
					"_min-range-inclusive": 0.0,
					"_max-range-exclusive": 100.0
				},
				"_unit": "qudt_unit_CentiM"
			}
		}
	}
}
```

The above example describes a [list](_array.md) of [floating-point](_type_number_float.md) values *greater or equal* to `0.0` and *less than* `100.0` representing a *length* in *centimetres*.



```json
{
	"_data": {
		"_set": {
			"_scalar_set": {
				"_type_scalar_set": "_type_enum",
				"_kind_enum": ["ISO_639_3"]
			}
		}
	}
}
```

The above example describes a [set](_set.md) of unique [enumeration](_type_enum.md) elements belonging to the `ISO_639_3` controlled vocabulary.



```json
{
	"_data": {
		"_dict": {
			"_dict_key": {
				"_dict_key_type": "_type_enum",
				"_kind_enum": ["ISO_3166_1", "ISO_3166_3"]
			},
			"_dict_value": {
				"_dict": {
					"_dict_key": {
						"_dict_key_type": "_type_enum",
						"_kind_enum": ["ISO_639_3"]
					},
					"_dict_value": {
						"_array": {
							"_elements": {
								"_min-items": 5,
								"_max-items": 10
							},
							"_scalar": {
								"_type_scalar": "_type_object",
								"_kind_object": ["some_object_definition"]
							}
						}
					}
				}
			}
		}
	}
}
```

The above example describes a [dictionary](_dict.md) whose *keys* are the [global identifiers](_gid.md) of ISO 3166 part 1 or part 3 country *controlled vocabulary elements*, and the values are *another dictionary* whose keys are ISO 639 languages and whose *values* are *arrays* that correspond to the `some_object_definition` *data structure type*; these *array* values must have a *minimum* of `5` elements and a *maximum* of `10` elements. This is an example of a recursive dictionary definition.



```json
{
	"_data": {
		"_scalar": {}
	}
}
```

This example shows the *data definition* for a *descriptor* that can take *only* [scalar](_scalar.md) values of any type.



```json
{
	"_data": {}
}
```

This example shows the *data definition* for a *descriptor* that can take *any data shape* or *value*.

---

**`_code`**

```json
{
  "_aid" : [
    "data"
  ],
  "_gid" : "_data",
  "_lid" : "data",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_data"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
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
