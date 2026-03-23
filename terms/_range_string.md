# `_range_string`

**`_title`**

String Range

**`_definition`**

An object that defines a string interval using inclusive and/or exclusive lower and upper bounds, compared lexicographically. At least one bound must be present; at most one lower bound and one upper bound may be present simultaneously.

**`_description`**

[`_range_string`](_range_string.md) is the schema term for string range objects. It is referenced by [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) via [`_kind_object`](_kind_object.md), and may be used directly as a generic string range property.

Comparison is **lexicographic**. String formats should be chosen so that lexicographic order corresponds to semantic order — for instance, the `YYYYMMDD`-family format of [`_type_string_YMD`](_type_string_YMD.md) has this property.

A range object may contain any combination of one lower bound and one upper bound:

- [`_min-range-inclusive_string`](_min-range-inclusive_string.md) — lower bound, value included
- [`_min-range-exclusive_string`](_min-range-exclusive_string.md) — lower bound, value excluded
- [`_max-range-inclusive_string`](_max-range-inclusive_string.md) — upper bound, value included
- [`_max-range-exclusive_string`](_max-range-exclusive_string.md) — upper bound, value excluded

```json
{
	"_range_string": {
		"_min-range-inclusive_string": "1950",
		"_max-range-inclusive_string": "19991231"
	}
}
```

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
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : {
    "_selection-descriptors_one-of-any" : [
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
