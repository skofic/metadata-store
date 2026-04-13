# Data section
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_data</code></p>

> The section of a term that describes the type and shape of the data the term represents. When absent or empty, the descriptor accepts any value without type or shape constraints. When non-empty, at most one shape property is present.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `data` |
| [Global identifier](_gid.md) | `_data` |
| [Official identifiers](_aid.md) | `data` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Data section

**[Definition](_definition.md):** The section of a term that describes the type and shape of the data the term represents. When absent or empty, the descriptor accepts any value without type or shape constraints. When non-empty, at most one shape property is present.

**[Description](_description.md)**

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

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Data section"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md) ([Minimum element count](_min-items.md): 1; [Maximum element count](_max-items.md): 1)
[Scalar](_scalar.md) · [Object](_object.md) · [Dictionary](_dict.md) · [Tuple](_tuple.md) · [Array](_array.md) · [Set](_set.md) · [Nested array](_nested.md) · [Type definition](_typedef.md)

<details>
<summary>JSON</summary>

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

</details>
