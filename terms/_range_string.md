# `_range_string`

**`_title`**

String Range

**`_definition`**

An object that defines a string interval using inclusive and/or exclusive lower and upper bounds, compared lexicographically. At least one bound must be present; at most one lower bound and one upper bound may be present simultaneously.

**`_description`**

`_range_string` is the schema term for string range objects. It is referenced by [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) via `_kind_object`, and may be used directly as a generic string range property.

Comparison is **lexicographic**. String formats should be chosen so that lexicographic order corresponds to semantic order — for instance, the `YYYYMMDD`-family format of [`_kind_string_ymd`](_kind_string_ymd.md) has this property.

A range object may contain any combination of one lower bound and one upper bound:

- [`_min-range-inclusive_string`](_min-range-inclusive_string.md) — lower bound, value included
- [`_min-range-exclusive_string`](_min-range-exclusive_string.md) — lower bound, value excluded
- [`_max-range-inclusive_string`](_max-range-inclusive_string.md) — upper bound, value included
- [`_max-range-exclusive_string`](_max-range-exclusive_string.md) — upper bound, value excluded

> **Note:** Selector review pending — see [`_range`](_range.md).

```json
{
	"_range_string": {
		"_min-range-inclusive_string": "1950",
		"_max-range-inclusive_string": "19991231"
	}
}
```

**`_notes`**

**Selector review pending**: same combination as [`_range`](_range.md) — `_selection-descriptors_one-none-of` plus `_selection-descriptors_any` must be reviewed for completeness when the `_rule` section is finalised.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_range_string",
  "_lid" : "string",
  "_nid" : "_range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range_string"
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
      "_min-range-inclusive_string",
      "_min-range-exclusive_string",
      "_max-range-inclusive_string",
      "_max-range-exclusive_string"
    ],
    "_selection-descriptors_one-none-of" : [
      [
        "_min-range-inclusive_string",
        "_min-range-exclusive_string"
      ],
      [
        "_max-range-inclusive_string",
        "_max-range-exclusive_string"
      ]
    ]
  }
}
```
