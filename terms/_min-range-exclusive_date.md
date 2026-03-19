# `_min-range-exclusive_date`

**`_title`**

Date Range Minimum Exclusive

**`_definition`**

The exclusive lower bound of a date range in `_kind_string_ymd` format. Only date values strictly greater than this bound (lexicographically) belong to the range — the bound itself is excluded.

**`_description`**

`_min-range-exclusive_date` is a property of [`_range_date`](_range_date.md) objects. It defines the lower bound of the date interval, **excluding** the bound value itself. It may appear in [`_valid-range_date`](_valid-range_date.md) and [`_normal-range_date`](_normal-range_date.md) objects.

At most one of `_min-range-exclusive_date` and [`_min-range-inclusive_date`](_min-range-inclusive_date.md) may be present in the same range object.

```json
{
	"_valid-range_date": {
		"_min-range-exclusive_date": "19491231"
	}
}
```

Dates up to and including 31 December 1949 are out of range; dates from 1950 onward are accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_min-range-exclusive_date",
  "_lid" : "date",
  "_nid" : "_min-range-exclusive"
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
