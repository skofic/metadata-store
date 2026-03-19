# `_range_date`

**`_title`**

Date Range

**`_definition`**

An object that defines a date interval in `_kind_string_ymd` format (YYYYMMDD, YYYYMM, or YYYY), using inclusive and/or exclusive lower and upper bounds compared lexicographically. At least one bound must be present.

**`_description`**

`_range_date` is the schema term for date range objects in `_kind_string_ymd` format. It is referenced by [`_valid-range_date`](_valid-range_date.md) and [`_normal-range_date`](_normal-range_date.md) via `_kind_object`. Its bound properties carry the `_date` suffix to distinguish them from generic string bounds.

Comparison is lexicographic over the YYYYMMDD-family format, which is order-preserving across all three precision levels: `1950` < `195003` < `19500315`.

- [`_min-range-inclusive_date`](_min-range-inclusive_date.md) — lower bound, value included
- [`_min-range-exclusive_date`](_min-range-exclusive_date.md) — lower bound, value excluded
- [`_max-range-inclusive_date`](_max-range-inclusive_date.md) — upper bound, value included
- [`_max-range-exclusive_date`](_max-range-exclusive_date.md) — upper bound, value excluded

> **Note:** Selector review pending — see [`_range`](_range.md).

```json
{
	"_range_date": {
		"_min-range-inclusive_date": "1950",
		"_max-range-inclusive_date": "19591231"
	}
}
```

This interval covers all year, year-month, and full-date values between 1950 and 31 December 1959.

**`_notes`**

**Selector review pending**: same combination as [`_range`](_range.md) — `_selection-descriptors_one-none-of` plus `_selection-descriptors_any` must be reviewed for completeness when the `_rule` section is finalised.

---

**`_code`**

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_range_date",
  "_lid" : "date",
  "_nid" : "_range"
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

**`_rule`**

```json
{
  "_required" : {
    "_selection-descriptors_any" : [
      "_min-range-inclusive_date",
      "_min-range-exclusive_date",
      "_max-range-inclusive_date",
      "_max-range-exclusive_date"
    ],
    "_selection-descriptors_one-none-of" : [
      [
        "_min-range-inclusive_date",
        "_min-range-exclusive_date"
      ],
      [
        "_max-range-inclusive_date",
        "_max-range-exclusive_date"
      ]
    ]
  }
}
```
