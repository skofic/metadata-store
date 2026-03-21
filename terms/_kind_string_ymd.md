# `_kind_string_YMD`

**`_title`**

Year-Month-Day

**`_definition`**

An enumeration element indicating that the string value is a partial or full date in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). This format accommodates dates of varying precision within a single field.

**`_description`**

`_kind_string_YMD` qualifies a [`_type_string`](_type_string.md) scalar as a compact date string that supports partial precision. Three lengths are valid:

- `YYYY` — year only, e.g. `1985`
- `YYYYMM` — year and month, e.g. `198503`
- `YYYYMMDD` — full date, e.g. `19850315`

This format is useful in scientific and historical datasets where dates may be known only to the year or month. Unlike [`_kind_string_date`](_kind_string_date.md), it does not use separators, which makes lexicographic ordering correct across all three precisions.

String range properties (`_valid-range_string`, `_normal-range_string`) are applicable.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_YMD",
		"_regexp": "^[0-9]{4}([0-9]{2}([0-9]{2})?)?$"
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
  "_gid" : "_kind_string_YMD",
  "_lid" : "YMD",
  "_nid" : "_kind_string"
}
```
