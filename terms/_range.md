# `_range`

**`_title`**

Number Range

**`_definition`**

An object that defines a numeric interval using inclusive and/or exclusive lower and upper bounds. At least one bound must be present; at most one lower bound and one upper bound may be present simultaneously.

**`_description`**

`_range` is the schema term for numeric range objects. It is referenced by [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) via `_kind_object`, and may also be used directly as a generic range property when the valid/normal distinction is not needed.

A range object may contain any combination of one lower bound and one upper bound:

- [`_min-range-inclusive`](_min-range-inclusive.md) — lower bound, value included (≥)
- [`_min-range-exclusive`](_min-range-exclusive.md) — lower bound, value excluded (>)
- [`_max-range-inclusive`](_max-range-inclusive.md) — upper bound, value included (≤)
- [`_max-range-exclusive`](_max-range-exclusive.md) — upper bound, value excluded (<)

At most one min-property and one max-property may be present; at least one must be present. Omitting a bound leaves that end of the interval open.

```json
{
	"_range": {
		"_min-range-inclusive": 0.0,
		"_max-range-exclusive": 100.0
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "range"
  ],
  "_gid" : "_range",
  "_lid" : "range",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range"
    ],
    "_type" : "_type_object"
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
        "_min-range-inclusive",
        "_min-range-exclusive"
      ],
      [
        "_max-range-inclusive",
        "_max-range-exclusive"
      ]
    ]
  }
}
```
