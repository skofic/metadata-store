# `_max-range-inclusive_date`

**`_title`**

Date Range Maximum Inclusive

**`_definition`**

The inclusive upper bound of a date range in `_kind_string_YMD` format. Only date values less than or equal to this bound (lexicographically) belong to the range.

**`_description`**

`_max-range-inclusive_date` is a property of [`_range_date`](_range_date.md) objects. It defines the upper bound of the date interval, **including** the bound value itself. It may appear in [`_valid-range_date`](_valid-range_date.md) and [`_normal-range_date`](_normal-range_date.md) objects.

At most one of `_max-range-inclusive_date` and [`_max-range-exclusive_date`](_max-range-exclusive_date.md) may be present in the same range object.

```json
{
	"_valid-range_date": {
		"_min-range-inclusive_date": "1950",
		"_max-range-inclusive_date": "19591231"
	}
}
```

Dates after 31 December 1959 are out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_max-range-inclusive_date",
  "_lid" : "date",
  "_nid" : "_max-range-inclusive"
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
