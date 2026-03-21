# `_kind_string_date`

**`_title`**

Date

**`_definition`**

An enumeration element indicating that the string value is a full calendar date in the format defined by JSON Schema (`date` format): `YYYY-MM-DD` (ISO 8601). String range properties may be used to constrain the allowed date interval.

**`_description`**

`_kind_string_date` qualifies a [`_type_string`](_type_string.md) scalar as a full calendar date. The format is `YYYY-MM-DD` as specified by ISO 8601 and the JSON Schema `date` format. Values such as `2024-03-15` (15 March 2024) are valid; partial dates and times are not.

For partial dates (year only, year-month, or full date), use [`_kind_string_YMD`](_kind_string_YMD.md) instead.

String range properties (`_valid-range_string`, `_normal-range_string`) are applicable and compare dates lexicographically, which is correct for the `YYYY-MM-DD` format.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_date",
		"_valid-range_string": {
			"_min-range-inclusive_string": "1900-01-01"
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_kind_string_date",
  "_lid" : "date",
  "_nid" : "_kind_string"
}
```
