# `_min-range-inclusive_date`

**`_title`**

Date Range Minimum Inclusive

**`_definition`**

The inclusive lower bound of a date range in `_kind_string_ymd` format. Only date values greater than or equal to this bound (lexicographically) belong to the range.

**`_description`**

`_min-range-inclusive_date` is a property of [`_range_date`](_range_date.md) objects. It defines the lower bound of the date interval in `_kind_string_ymd` format, **including** the bound value itself. Comparison is lexicographic over the YYYYMMDD-family format. It may appear in [`_valid-range_date`](_valid-range_date.md) and [`_normal-range_date`](_normal-range_date.md) objects.

At most one of `_min-range-inclusive_date` and [`_min-range-exclusive_date`](_min-range-exclusive_date.md) may be present in the same range object.

```json
{
	"_valid-range_date": {
		"_min-range-inclusive_date": "1900"
	}
}
```

Dates before year 1900 are out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_min-range-inclusive_date",
  "_lid" : "date",
  "_nid" : "_min-range-inclusive"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_string" : "_kind_string_ymd",
    "_type" : "_type_string"
  }
}
```
