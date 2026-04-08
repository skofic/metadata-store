# `_array`

**`_title`**

Array

**`_definition`**

The `_data` shape property for an ordered list of elements of the same type. When empty (`{}`), the array may contain any number of elements of any type. When non-empty, exactly one shape sub-property defines the element type, and the optional `_elements` property constrains the element count. The element type may be defined inline or by reference to a typedef term.

**`_description`**

An *array* is an ordered sequence of values of the *same type*. Values may repeat; the type definition applies uniformly to every element.

Arrays are *recursive*: the element type is itself a shape property — one of [`_scalar`](_scalar.md), [`_object`](_object.md), [`_dict`](_dict.md), [`_tuple`](_tuple.md), [`_array`](_array.md), [`_set`](_set.md), [`_nested`](_nested.md). Alternatively, [`_typedef`](_typedef.md) may be used to delegate the element type definition to an existing typedef term.

When `_array` is an *empty object* (`{}`), the array may contain any number of elements of any shape or type, with no further constraints.

When non-empty, exactly *one* shape sub-property must be present. The optional [`_elements`](_elements.md) property may always be added alongside any shape to constrain the minimum and maximum number of items.

**`_examples`**

An array of integers with 1 to 5 elements, each between 5 and 10:

```json
{
	"_data": {
		"_array": {
			"_elements": {"_min-items": 1, "_max-items": 5},
			"_scalar": {
				"_number_integer": {
					"_range_valid": {
						"_min-range-inclusive": 5,
						"_max-range-inclusive": 10
					}
				}
			}
		}
	}
}
```

An array of arrays of floating-point lengths:

```json
{
	"_data": {
		"_array": {
			"_array": {
				"_scalar": {
					"_number_float": {
						"_unit": "_unit_length_cm"
					}
				}
			}
		}
	}
}
```

An unconstrained array:

```json
{
	"_data": {
		"_array": {}
	}
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
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_elements"
      ],
      "_required" : [
        {
          "_selection" : [
            "_scalar",
            "_object",
            "_dict",
            "_tuple",
            "_array",
            "_set",
            "_nested",
            "_typedef"
          ],
          "_selectors" : [
            {
              "_all" : {
                "_max-items" : 1,
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```
