# `_kind_string_date-time`

**`_title`**

Date-Time

**`_definition`**

An enumeration element indicating that the string value is a combined date and time in the format defined by JSON Schema (`date-time` format): `YYYY-MM-DDTHH:MM:SS` with an optional timezone offset (ISO 8601). String range properties may be used to constrain the allowed interval.

**`_description`**

`_kind_string_date-time` qualifies a [`_type_string`](_type_string.md) scalar as a combined date-time value. The format is `YYYY-MM-DDTHH:MM:SS` with an optional UTC offset or `Z` suffix, as specified by ISO 8601 and the JSON Schema `date-time` format. Example: `2024-03-15T14:30:00Z`.

When a Unix timestamp is more appropriate (e.g. for high-frequency logging), consider [`_type_timestamp`](_type_timestamp.md) instead.

String range properties (`_valid-range_string`, `_normal-range_string`) are applicable and compare date-times lexicographically, which is correct for ISO 8601 format with consistent timezone handling.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_date-time"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "date-time"
  ],
  "_gid" : "_kind_string_date-time",
  "_lid" : "date-time",
  "_nid" : "_kind_string"
}
```
