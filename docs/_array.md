# `_array`

**`_title`**

Array

**`_definition`**

The shape property for an ordered list of elements of the same type. When empty, the array may contain any number of elements of any type. When non-empty, exactly one shape sub-property defines the element type, and the optional `_elements` property constrains the element count. The shape may be defined inline or by reference to a typedef term.

**`_description`**

An *array* is an ordered sequence of values of the *same type*. Values may repeat; the type definition applies uniformly to every element.

Arrays are *recursive*: the element type is itself a shape property — one of [`_scalar`](_scalar.md), [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), [`_tuple`](_tuple.md), or [`_dict`](_dict.md). Nesting terminates at a [`_scalar`](_scalar.md) or [`_dict`](_dict.md) leaf. Alternatively, [`_typedef`](_typedef.md) may be used to delegate the element type definition to an existing typedef term.

When [`_array`](_array.md) is an *empty object* (`{}`), the array may contain any number of elements of any shape or type, with no further constraints.

When non-empty, exactly *one* shape sub-property must be present. The optional [`_elements`](_elements.md) property may always be added alongside any shape — including `_typedef` — to constrain the minimum and maximum number of items.

**`_examples`**

An array of integers with 1 to 5 elements, each between 5 and 10:

```json
{
	"_array": {
		"_elements": {"_min-items": 1, "_max-items": 5},
		"_scalar": {
			"_scalar_type": "_type_number_integer",
			"_range_valid": {"_range_min-inclusive": 5, "_range_max-inclusive": 10}
		}
	}
}
```

A nested array — an array of arrays of floating-point lengths:

```json
{
	"_array": {
		"_array": {
			"_scalar": {"_scalar_type": "_type_number_float", "_unit": "_unit_length_cm"}
		}
	}
}
```

An unconstrained array:

```json
{"_array": {}}
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
    "_object_types" : [
      "_array"
    ],
    "_scalar_type" : "_type_object"
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
  "_required" : [
    {
      "_selection_descriptors" : [
        "_scalar",
        "_array",
        "_nested",
        "_set",
        "_tuple",
        "_dict",
        "_typedef"
      ],
      "_selection_rules" : [
        {
          "_elements" : {
            "_max-items" : 1
          },
          "_selection_type" : "_type_selection_optional"
        }
      ]
    }
  ]
}
```
