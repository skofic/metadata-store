# `_normal-range_date`

**`_title`**

Normal Date Range

**`_definition`**

The boundaries of expected or typical date values in `_kind_string_ymd` format. Values outside this range are flagged as outliers for review but are not rejected. The range is expressed as an object conforming to the `_range_date` schema.

**`_description`**

`_normal-range_date` is the date-specific counterpart of [`_normal-range_string`](_normal-range_string.md), used with descriptors whose `_kind_string` is [`_kind_string_ymd`](_kind_string_ymd.md). Values outside this range are **outliers** — flagged for review but not rejected.

The value is an object conforming to the [`_range_date`](_range_date.md) schema.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_ymd",
		"_valid-range_date": {"_min-range-inclusive_date": "1800"},
		"_normal-range_date": {
			"_min-range-inclusive_date": "1900",
			"_max-range-exclusive_date": "2100"
		}
	}
}
```

Dates before 1800 are errors; dates before 1900 or from 2100 onward are flagged as outliers.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_normal-range_date",
  "_lid" : "date",
  "_nid" : "_normal-range"
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
