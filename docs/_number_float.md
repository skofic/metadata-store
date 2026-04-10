# `_number_float`

**`_title`**

Floating point number

**`_definition`**

The scalar data type for floating-point numbers. Values must be stored and treated as floating-point; integer values are accepted but treated as floats. A sub-type of `_number`; `_decimals` is permitted.

**`_description`**

`_number_float` is a sub-type of [`_number`](_number.md). It requires the value to be stored and displayed as a floating-point number. Integer values are accepted but treated as floats. [`_decimals`](_decimals.md) is permitted to control display precision. Comparable; may appear in sets but not as dictionary keys.

**`_examples`**

A floating-point weight with two decimal places:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 2,
			"_unit": "_unit_weight_kg"
		}
	}
}
```

Stored values: `3.14159`, `0.0`, `98.6`, `-2.5`.

---

**`_code`**

```json
{
  "_nid": "_number",
  "_lid": "float",
  "_gid": "_number_float",
  "_aid": [
    "float"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
        "_unit",
        "_unit_name",
        "_unit_symbol",
        "_range_valid",
        "_range_normal",
        "_decimals"
      ]
    }
  }
}
```
