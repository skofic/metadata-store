# `_type_number_float`

**`_title`**

Float

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a floating-point number — a number that may include a decimal part. Values that are whole numbers without a decimal part are rejected. The optional [`_decimals`](_decimals.md) property controls the number of decimal places displayed.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_number_float`, the descriptor accepts floating-point values but rejects plain integers. All numbers are stored as double-precision floating-point in ArangoDB; the integer-rejection constraint is enforced by the validation layer.

[`_decimals`](_decimals.md) is a display hint (not a storage constraint), valid only for [`_type_number`](_type_number.md) and `_type_number_float`.

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_float",
		"_decimals": 2,
		"_valid-range": {
			"_min-range-inclusive": 0.0
		}
	}
}
```

This descriptor accepts any non-negative floating-point number, displayed with two decimal places.

---

**`_code`**

```json
{
  "_aid" : [
    "float"
  ],
  "_gid" : "_type_number_float",
  "_lid" : "float",
  "_nid" : "_type_number"
}
```
