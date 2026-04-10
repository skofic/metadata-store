# `_number`

**`_title`**

Number

**`_definition`**

The scalar data type for any numeric value, accepting both integers and floating-point numbers. Parent type of `_number_float` and `_number_integer`, which add stricter format constraints. When used as the type key, `_decimals` and all range and unit companion properties are permitted.

**`_description`**

`_number` serves a dual role. As a type key inside [`_scalar`](_scalar.md), it declares that the value is any numeric value — integer or floating-point. As a parent type, it is the root of [`_number_float`](_number_float.md) and [`_number_integer`](_number_integer.md), which further constrain the accepted format.

When `_number` is the type key, companion properties [`_decimals`](_decimals.md) and all range and unit properties are permitted. Comparable; may appear in sets but not as dictionary keys.

**`_examples`**

A number with a valid range:

```json
{
	"_scalar": {
		"_number": {
			"_range_valid": {
				"_min-inclusive": 0,
				"_max-exclusive": 100
			}
		}
	}
}
```

Stored values: `42`, `3.14`, `-100`.

---

**`_code`**

```json
{
  "_aid" : [
    "number"
  ],
  "_gid" : "_number",
  "_lid" : "number",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
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
