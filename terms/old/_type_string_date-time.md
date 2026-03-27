# `_type_string_date-time`

**`_title`**

Date-Time

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a combined date and time in the format defined by JSON Schema (`date-time` format): `YYYY-MM-DDTHH:MM:SS` with an optional timezone offset (ISO 8601).

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_date-time`, the descriptor value is a date-time in `YYYY-MM-DDTHH:MM:SS` format with an optional UTC offset or `Z` suffix, as specified by ISO 8601 and the JSON Schema `date-time` format. Example: `2024-03-15T14:30:00Z`.

When a Unix timestamp is more appropriate (e.g. for high-frequency logging), consider [`_type_timestamp`](_type_timestamp.md) instead.

Companion properties: [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md) — correct for ISO 8601 format with consistent timezone handling.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_date-time"
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
  "_gid" : "_type_string_date-time",
  "_lid" : "date-time",
  "_nid" : "_type_string"
}
```
