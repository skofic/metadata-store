# `_data`

**`_title`**

Data section

**`_definition`**

The section of a term that describes the type and shape of the data the term represents. When absent or empty, the descriptor accepts any value without type or shape constraints. When non-empty, at most one shape property is present.

**`_description`**

The data section is present on descriptor terms — terms that represent a typed data variable. It defines the *shape* of the data: whether the value is a scalar, an object, an array, a set, a tuple, a nested array, a dictionary, or a reference to a typedef term.

At most one shape property may be present. When the section is an **empty object** (`{}`), the descriptor accepts any value of any shape and type without constraint.

The seven inline shapes are:

- [`_scalar`](_scalar.md) — a single indivisible value; the type is expressed as a property key inside the object
- [`_object`](_object.md) — an object or struct; may be unconstrained (`{}`), open-schema, or closed-schema
- [`_array`](_array.md) — an ordered list of elements of the same type
- [`_set`](_set.md) — an unordered list of unique comparable elements
- [`_tuple`](_tuple.md) — an ordered positional array where each position has its own independently defined type
- [`_nested`](_nested.md) — a recursively nested array whose leaf elements are of a comparable type
- [`_dict`](_dict.md) — a key/value dictionary with typed keys and values

The eighth option is [`_typedef`](_typedef.md), a reference to an existing typedef term that supplies the shape by delegation rather than inline definition. It is mutually exclusive with all seven inline shapes.

**`_examples`**

A descriptor that accepts any value (empty data section):

```json
{
	"_data": {}
}
```

A scalar descriptor — a floating-point length in centimetres:

```json
{
	"_data": {
		"_scalar": {
			"_number_float": {
				"_unit": "_unit_length_cm",
				"_decimals": 2
			}
		}
	}
}
```

An object descriptor with a closed schema:

```json
{
	"_data": {
		"_object": {
			"_closed": {
				"_required": [
					{
						"_selectors": [{"_all": {}}],
						"_selection": ["_lid", "_gid"]
					}
				]
			}
		}
	}
}
```

An array descriptor — an ordered list of generic strings:

```json
{
	"_data": {
		"_array": {
			"_scalar": {
				"_string": {}
			}
		}
	}
}
```

A set descriptor — an unordered set of ISO 639-3 language codes:

```json
{
	"_data": {
		"_set": {
			"_enum": {
				"_enums": ["ISO_639_3"]
			}
		}
	}
}
```

A tuple descriptor — a date followed by a weight:

```json
{
	"_data": {
		"_tuple": [
			{
				"_scalar": {
					"_string_date": {}
				}
			},
			{
				"_scalar": {
					"_number_float": {
						"_unit": "_unit_weight_kg"
					}
				}
			}
		]
	}
}
```

A nested array descriptor — a nested structure of strings:

```json
{
	"_data": {
		"_nested": {
			"_string": {}
		}
	}
}
```

A dictionary descriptor — language-keyed string values (the multilingual pattern):

```json
{
	"_data": {
		"_dict": {
			"_dict_key": {
				"_enum": {
					"_enums": ["ISO_639_3"]
				}
			},
			"_dict_value": {
				"_scalar": {
					"_string": {}
				}
			}
		}
	}
}
```

A typedef reference — delegates to the built-in scalar type list:

```json
{
	"_data": {
		"_typedef": "_type_scalar"
	}
}
```

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
  "_object" : {
    "_closed" : {
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
