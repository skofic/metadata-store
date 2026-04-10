# `_string_date`

**`_title`**

Date

**`_definition`**

The scalar data type for full dates in ISO 8601 `YYYY-MM-DD` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

**`_description`**

`_string_date` stores a full calendar date with hyphen separators. Lexicographic ordering is meaningful. String range constraints may be applied via [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

A date with a lower bound:

```json
{
	"_scalar": {
		"_string_date": {
			"_range_valid_string": {
				"_string_min-inclusive": "1900-01-01"
			}
		}
	}
}
```

Stored values: `"2024-03-15"`, `"1970-01-01"`, `"2000-12-31"`.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_string_date",
  "_lid" : "date",
  "_nid" : "_string"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```
