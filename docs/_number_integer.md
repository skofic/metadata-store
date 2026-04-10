# `_number_integer`

**`_title`**

Integer number

**`_definition`**

The scalar data type for integer numbers. Values must have no decimal part; floating-point numbers are rejected. A sub-type of `_number`; `_decimals` is not permitted.

**`_description`**

`_number_integer` is a sub-type of [`_number`](_number.md). It restricts values to whole numbers — no decimal part is allowed. [`_decimals`](_decimals.md) is not permitted. Comparable; may appear in sets but not as dictionary keys.

**`_examples`**

A non-negative integer count:

```json
{
	"_scalar": {
		"_number_integer": {
			"_range_valid": {
				"_min-range-inclusive": 0
			}
		}
	}
}
```

Stored values: `42`, `-7`, `2024`, `0`.

---

**`_code`**

```json
{
  "_nid": "_number",
  "_lid": "integer",
  "_gid": "_number_integer",
  "_aid": [
    "integer"
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
        "_range_normal"
      ]
    }
  }
}
```
