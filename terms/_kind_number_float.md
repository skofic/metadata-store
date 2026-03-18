# `_kind_number_float`

**`_title`**

Float

**`_definition`**

An enumeration element indicating that the numeric value is a floating-point number — a number that may include a decimal part. When present in `_kind_number`, the descriptor accepts values with fractional precision. The optional `_decimals` property controls the number of decimal places displayed.

**`_description`**

`_kind_number_float` is one of the two allowed values of the [`_kind_number`](_kind_number.md) qualifier. It indicates that the numeric value is stored as a double-precision floating-point number and may carry a fractional part.

When `_kind_number` contains only `_kind_number_float`, the descriptor accepts floating-point values but rejects plain integers. When `_kind_number` contains both `_kind_number_float` and `_kind_number_integer`, both floating-point and integer values are accepted.

The companion `_decimals` property, valid only when `_kind_number_float` is present, controls how many decimal places are shown when the value is displayed — it is a display hint, not a storage constraint.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
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
  "_gid" : "_kind_number_float",
  "_lid" : "float",
  "_nid" : "_kind_number"
}
```
