# `_string_YMD`

**`_title`**

YYYYMMDD date

**`_definition`**

The scalar data type for partial or full dates in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). Comparable; string range constraints may be applied. A sub-type of `_string`.

**`_description`**

`_string_YMD` stores dates without separators, allowing partial dates (year only or year-month) unlike [`_string_date`](_string_date.md). Lexicographic ordering is meaningful and [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md) may be applied. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

A YMD date field accepting any date from year 2000 onwards:

```json
{
	"_scalar": {
		"_string_YMD": {
			"_range_valid_string": {
				"_min-range-inclusive_string": "2000"
			}
		}
	}
}
```

Stored values: `"2024"` (year only), `"202403"` (year-month), `"20240315"` (full date).

---

**`_code`**

```json
{
  "_nid": "_string",
  "_lid": "YMD",
  "_gid": "_string_YMD",
  "_aid": [
    "YMD"
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
