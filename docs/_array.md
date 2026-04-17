# Array
<p><a href="_term_role_data-shape.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data shape</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_array</code></p>

> The `_data` shape property for an ordered list of elements of the same type. When empty (`{}`), the array may contain any number of elements of any type. When non-empty, exactly one shape sub-property defines the element type, and the optional `_elements` property constrains the element count. The element type may be defined inline or by reference to a typedef term.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `array` |
| [Global identifier](_gid.md) | `_array` |
| [Official identifiers](_aid.md) | `array` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Array

**[Definition](_definition.md):** The `_data` shape property for an ordered list of elements of the same type. When empty (`{}`), the array may contain any number of elements of any type. When non-empty, exactly one shape sub-property defines the element type, and the optional `_elements` property constrains the element count. The element type may be defined inline or by reference to a typedef term.

**[Description](_description.md)**

An *array* is an ordered sequence of values of the *same type*. Values may repeat; the type definition applies uniformly to every element.

Arrays are *recursive*: the element type is itself a shape property — one of [`_scalar`](_scalar.md), [`_object`](_object.md), [`_dict`](_dict.md), [`_tuple`](_tuple.md), [`_array`](_array.md), [`_set`](_set.md), [`_nested`](_nested.md). Alternatively, [`_typedef`](_typedef.md) may be used to delegate the element type definition to an existing typedef term.

When `_array` is an *empty object* (`{}`), the array may contain any number of elements of any shape or type, with no further constraints.

When non-empty, exactly *one* shape sub-property must be present. The optional [`_elements`](_elements.md) property may always be added alongside any shape to constrain the minimum and maximum number of items.

**[Examples](_examples.md)**

An array of integers with 1 to 5 elements, each between 5 and 10:

```json
{
	"_data": {
		"_array": {
			"_elements": {"_min-items": 1, "_max-items": 5},
			"_scalar": {
				"_number_integer": {
					"_range_valid": {
						"_min-inclusive": 5,
						"_max-inclusive": 10
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
    "ISO_639_3_eng" : "Array"
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

**[Recommended properties](_recommended.md):** [Elements count range](_elements.md)

<details>
<summary>JSON</summary>

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

</details>
