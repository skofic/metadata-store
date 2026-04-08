# `_tuple`

**`_title`**

Tuple

**`_definition`**

The data shape property for an ordered positional array where each element position is typed by a full data section object. The value at position n must satisfy the shape defined at position n in the tuple definition.

**`_description`**

A *tuple* is a fixed-structure ordered sequence where each position carries an independently defined type. Unlike an [`_array`](_array.md), which applies one uniform element type to all positions, a tuple assigns a distinct [`_data`](_data.md) section to each index.

In practice, a tuple value is an array of `_data` section objects — each element of the `_tuple` value is itself a complete `_data` section with exactly one shape property. At validation time, the value at position *n* is validated against the `_data` section at position *n* in the tuple definition. The optional [`_elements`](_elements.md) property constrains how many positions the tuple may contain; when absent, all defined positions are required.

This design means a tuple can mix any combination of shapes across its positions — a date string at position 0, a numeric measurement at position 1, an enumeration value at position 2, and so on.

**`_examples`**

A three-position tuple — date, body weight, and language code:

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
			},
			{
				"_scalar": {
					"_enum": {
						"_enums": ["ISO_639_3"]
					}
				}
			}
		]
	}
}
```

Position 0 is a date string, position 1 is a float weight, position 2 is a language code. All three positions are required.

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
