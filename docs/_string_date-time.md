# `_string_date-time`

**`_title`**

Date and time

**`_definition`**

The scalar data type for combined date-time values in ISO 8601 `YYYY-MM-DDTHH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

**`_description`**

`_string_date-time` stores a combined date and time value with the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) `T` separator. Lexicographic ordering is meaningful. String range constraints may be applied via [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_date-time": {}
	}
}
```

Stored values: `"2024-03-15T14:30:00"`, `"2000-01-01T00:00:00"`.

---

**`_code`**

```json
{
  "_nid": "_string",
  "_lid": "date-time",
  "_gid": "_string_date-time",
  "_aid": [
    "date-time"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```
