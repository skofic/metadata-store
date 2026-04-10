# `_range_normal_string`

**`_title`**

Normal string range

**`_definition`**

The companion property that defines the expected lexicographic boundaries for a string scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_string`, `_string_HEX`, and date/time string types. Its shape follows the `_range_string` typedef.

**`_description`**

`_range_normal_string` is an optional companion property for string scalar types. When present, the stored string value is compared against the specified lexicographic boundaries to determine whether it is within the expected distribution; a value outside the normal range is treated as an **outlier warning**, not an error.

The value is a [`_range_string`](_range_string.md) object with the same structure as [`_range_valid_string`](_range_valid_string.md). The two properties may both be present on the same scalar: `_range_valid_string` enforces hard limits, while `_range_normal_string` marks the subset of valid values considered typical.

**`_examples`**

A date field where dates before 2000 are valid but unusual:

```json
{
	"_scalar": {
		"_string_date": {
			"_range_valid_string": {
				"_string_min-inclusive": "1900-01-01"
			},
			"_range_normal_string": {
				"_string_min-inclusive": "2000-01-01"
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
    "string"
  ],
  "_gid" : "_range_normal_string",
  "_lid" : "string",
  "_nid" : "_range_normal"
}
```

**`_data`**

```json
{
  "_typedef" : "_range_string"
}
```
