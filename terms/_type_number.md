# `_type_number`

**`_title`**

Number

**`_definition`**

Scalar data type for a numeric value stored as a double-precision floating-point number. The companion property `_kind_number` is required and specifies whether the value is a floating-point number, an integer, or either.

**`_description`**

When [`_type`](_type.md) is set to `_type_number`, the descriptor value is a number stored internally as a double-precision floating-point. The companion property [`_kind_number`](_kind_number.md) is **required** and must be a non-empty set selecting [`_kind_number_float`](_kind_number_float.md), [`_kind_number_integer`](_kind_number_integer.md), or both.

The [`_scalar`](_scalar.md) section may additionally carry [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md), and [`_normal-range`](_normal-range.md) for any `_type_number` configuration. [`_decimals`](_decimals.md) is only meaningful when `_kind_number_float` is included.

**`_examples`**

**Float with unit and normal range** — body temperature in degrees Celsius:

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_decimals": 1,
		"_unit": "_unit_temperature_C",
		"_normal-range": {
			"_min-range-inclusive": 36.0,
			"_max-range-inclusive": 37.5
		}
	}
}
```

A floating-point value displayed with one decimal place. Values outside the normal range are flagged as outliers but not rejected.



**Integer with valid range** — a count of samples that must be at least 1:

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_integer"],
		"_valid-range": {
			"_min-range-inclusive": 1
		}
	}
}
```

An integer value. Any value less than 1 is rejected as invalid.



**Float or integer** — a measurement that may be recorded with or without decimals:

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float", "_kind_number_integer"]
	}
}
```

Both `42` and `42.5` are valid values.

---

**`_code`**

```json
{
  "_aid" : [
    "number"
  ],
  "_gid" : "_type_number",
  "_lid" : "number",
  "_nid" : "_type"
}
```
