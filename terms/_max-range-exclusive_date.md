# `_max-range-exclusive_date`

**`_title`**

Date Range Maximum Exclusive

**`_definition`**

The exclusive upper bound of a date range in `_kind_string_YMD` format. Only date values strictly less than this bound (lexicographically) belong to the range — the bound itself is excluded.

**`_description`**

`_max-range-exclusive_date` is a property of [`_range_date`](_range_date.md) objects. It defines the upper bound of the date interval, **excluding** the bound value itself. It may appear in [`_valid-range_date`](_valid-range_date.md) and [`_normal-range_date`](_normal-range_date.md) objects.

At most one of `_max-range-exclusive_date` and [`_max-range-inclusive_date`](_max-range-inclusive_date.md) may be present in the same range object.

```json
{
	"_valid-range_date": {
		"_min-range-inclusive_date": "1900",
		"_max-range-exclusive_date": "2100"
	}
}
```

Dates from year 2100 onward are out of range; `"20991231"` is accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_max-range-exclusive_date",
  "_lid" : "date",
  "_nid" : "_max-range-exclusive"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_string" : "_kind_string_YMD",
    "_type" : "_type_string"
  }
}
```
