# `_kind_string_time`

**`_title`**

Time

**`_definition`**

An enumeration element indicating that the string value is a time-of-day in the format defined by JSON Schema (`time` format): `HH:MM:SS` with an optional timezone offset (ISO 8601). String range properties may be used to constrain the allowed time interval.

**`_description`**

`_kind_string_time` qualifies a [`_type_string`](_type_string.md) scalar as a time-of-day value. The format is `HH:MM:SS` optionally followed by a UTC offset (`+HH:MM` or `Z`), as specified by ISO 8601 and the JSON Schema `time` format. Examples: `14:30:00`, `08:00:00+01:00`, `23:59:59Z`.

String range properties (`_valid-range_string`, `_normal-range_string`) are applicable when comparing times lexicographically within the same timezone.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_time"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "time"
  ],
  "_gid" : "_kind_string_time",
  "_lid" : "time",
  "_nid" : "_kind_string"
}
```
