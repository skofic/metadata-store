# `_range_normal`

**`_title`**

Normal numeric range

**`_definition`**

The companion property that defines the expected numeric boundaries for a scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_number`, `_number_float`, `_number_integer`, and `_timestamp`. Its shape follows the `_range` typedef.

**`_description`**

`_range_normal` is an optional companion property for numeric scalar types. When present, the stored value is compared against the specified boundaries to determine whether it is within the expected distribution; a value outside the normal range is treated as an **outlier warning**, not an error.

The value is a [`_range`](_range.md) object with the same structure as [`_range_valid`](_range_valid.md). The two properties may both be present on the same scalar: `_range_valid` enforces hard limits, while `_range_normal` marks the subset of valid values considered typical.

**`_examples`**

Human body temperature in degrees Celsius — valid up to 45 °C, normal between 35.5 and 38.5 °C:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 1,
			"_unit": ["_unit_temperature_C"],
			"_range_valid": {
				"_min-inclusive": 25.0,
				"_max-inclusive": 45.0
			},
			"_range_normal": {
				"_min-inclusive": 35.5,
				"_max-inclusive": 38.5
			}
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "normal"
  ],
  "_gid" : "_range_normal",
  "_lid" : "normal",
  "_nid" : "_range"
}
```

**`_data`**

```json
{
  "_typedef" : "_range"
}
```
