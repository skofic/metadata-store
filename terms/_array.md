# `_array`

**`_title`**

Array

**`_definition`**

The shape property for an ordered list of elements of the same type. When empty, the array may contain any number of elements of any type. When non-empty, exactly one shape sub-property defines the element type, and the optional [`_elements`](_elements.md) property constrains the element count.

**`_description`**

An *array* is an ordered sequence of values of the *same type*. Values may repeat; the type definition applies uniformly to every element.

Arrays are *recursive*: the element type is itself a shape property — one of [`_scalar`](_scalar.md), [`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), or [`_dict`](_dict.md). Nesting terminates at a [`_scalar`](_scalar.md) or [`_dict`](_dict.md) leaf.

When [`_array`](_array.md) is an *empty object* (`{}`), the array may contain any number of elements of any shape or type, with no further constraints.

When non-empty, exactly *one* shape sub-property must be present. The optional [`_elements`](_elements.md) property may always be added to constrain the minimum and maximum number of items.

**`_examples`**

An array of integers between 5 and 10, with 1 to 5 elements:

```json
{
	"_array": {
		"_elements": {
			"_min-items": 1,
			"_max-items": 5
		},
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



A nested array — an array of arrays of floating-point lengths:

```json
{
	"_array": {
		"_array": {
			"_elements": {
				"_max-items": 10
			},
			"_scalar": {
				"_type_scalar": "_type_number_float",
				"_unit": "_unit_length_cm"
			}
		}
	}
}
```



An array of sets of ISO 639-3 language codes:

```json
{
	"_array": {
		"_set": {
			"_scalar_set": {
				"_type_scalar_set": "_type_enum",
				"_kind_enum": ["ISO_639_3"]
			}
		}
	}
}
```



An unconstrained array:

```json
{
	"_array": {}
}
```

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
