# `_type_string_YMD`

**`_title`**

Year-Month-Day

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a partial or full date in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). This format accommodates dates of varying precision within a single field.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_YMD`, the descriptor value is a compact date string that supports partial precision. Three lengths are valid:

- `YYYY` — year only, e.g. `1985`
- `YYYYMM` — year and month, e.g. `198503`
- `YYYYMMDD` — full date, e.g. `19850315`

This format is useful in scientific and historical datasets where dates may be known only to the year or month. Unlike [`_type_string_date`](_type_string_date.md), it uses no separators, which makes lexicographic ordering correct across all three precisions.

Companion properties: [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md).

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_YMD",
		"_valid-range_string": {
			"_min-range-inclusive_string": "19000101"
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "YMD"
  ],
  "_gid" : "_type_string_YMD",
  "_lid" : "YMD",
  "_nid" : "_type_string"
}
```
