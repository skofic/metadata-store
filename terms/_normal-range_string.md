# `_normal-range_string`

**`_title`**

Normal String Range

**`_definition`**

The boundaries of expected or typical string values. Values outside this range are flagged as outliers for review but are not rejected. The range is expressed as an object conforming to the `_range_string` schema, using lexicographic comparison.

**`_description`**

`_normal-range_string` defines the interval in which string values are considered typical. Values outside this interval are **outliers** — not invalid, but flagged for review. It is the string counterpart of [`_normal-range`](_normal-range.md) and follows the same lexicographic comparison convention as [`_valid-range_string`](_valid-range_string.md).

The value is an object conforming to the [`_range_string`](_range_string.md) schema.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_regexp": "^[A-Z]{2}$",
		"_valid-range_string": {
			"_min-range-inclusive_string": "AA",
			"_max-range-inclusive_string": "ZZ"
		},
		"_normal-range_string": {
			"_min-range-inclusive_string": "CA",
			"_max-range-inclusive_string": "MZ"
		}
	}
}
```

Any two-letter uppercase string is valid; strings outside `CA`–`MZ` are accepted but flagged as outliers.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_normal-range_string",
  "_lid" : "string",
  "_nid" : "_normal-range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range_string"
    ],
    "_type" : "_type_object"
  }
}
```
