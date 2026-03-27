# `_type_string_time`

**`_title`**

Time

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a time-of-day in the format defined by JSON Schema (`time` format): `HH:MM:SS` with an optional timezone offset (ISO 8601).

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_time`, the descriptor value is a time-of-day in `HH:MM:SS` format, optionally followed by a UTC offset (`+HH:MM` or `Z`), as specified by ISO 8601 and the JSON Schema `time` format. Examples: `14:30:00`, `08:00:00+01:00`, `23:59:59Z`.

Companion properties: [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md) — applicable when comparing times within the same timezone.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_time"
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
  "_gid" : "_type_string_time",
  "_lid" : "time",
  "_nid" : "_type_string"
}
```
