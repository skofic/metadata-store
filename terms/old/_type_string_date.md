# `_type_string_date`

**`_title`**

Date

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a full calendar date in the format defined by JSON Schema (`date` format): `YYYY-MM-DD` (ISO 8601). String range properties may be used to constrain the allowed date interval.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_date`, the descriptor value is a full calendar date in `YYYY-MM-DD` format as specified by ISO 8601 and the JSON Schema `date` format. Partial dates and times are not accepted — for partial dates (year only, year-month, or full date), use [`_type_string_YMD`](_type_string_YMD.md) instead.

Companion properties: [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md). String range comparisons are correct for the `YYYY-MM-DD` format as lexicographic order matches chronological order.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_date",
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
  "_gid" : "_type_string_date",
  "_lid" : "date",
  "_nid" : "_type_string"
}
```
