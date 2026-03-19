# `_valid-range_date`

**`_title`**

Valid Date Range

**`_definition`**

The hard boundaries of acceptable date values in `_kind_string_ymd` format (YYYYMMDD, YYYYMM, or YYYY). Any value falling outside this range is considered an error and must be rejected. The range is expressed as an object conforming to the `_range_date` schema.

**`_description`**

`_valid-range_date` is the date-specific counterpart of [`_valid-range_string`](_valid-range_string.md), used exclusively with descriptors whose `_kind_string` is [`_kind_string_ymd`](_kind_string_ymd.md). Its bound values must be strings in YYYYMMDD format — either a full date (`YYYYMMDD`), a year-month (`YYYYMM`), or a year-only (`YYYY`) value. Values outside this range are **errors**. Comparison is lexicographic over the YYYYMMDD-family format, which is order-preserving across all three precision levels.

The value is an object conforming to the [`_range_date`](_range_date.md) schema, whose bound properties use the `_date` suffix.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_ymd",
		"_valid-range_date": {
			"_min-range-inclusive_date": "1900",
			"_max-range-exclusive_date": "2100"
		}
	}
}
```

Dates before year 1900 or from year 2100 onwards are errors. The bounds themselves — `"1900"` and `"2100"` — are year-only precision values, consistent with the format's support for partial dates.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_valid-range_date",
  "_lid" : "date",
  "_nid" : "_valid-range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range_date"
    ],
    "_type" : "_type_object"
  }
}
```
