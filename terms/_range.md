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

> **Note:** The `_rule._required` for this term uses `_selection-descriptors_one-none-of` combined with `_selection-descriptors_any` to express 'at most one from each bound pair, but at least one overall'. This combination of selectors should be reviewed when the `_rule` section is finalised.

```json
{
	"_range": {
		"_min-range-inclusive": 0.0,
		"_max-range-exclusive": 100.0
	}
}
```

**`_notes`**

**Selector review pending**: the `_rule._required` below combines `_selection-descriptors_one-none-of` (at most one from each bound pair) with `_selection-descriptors_any` (at least one bound overall). This combination must be verified for completeness and correctness when the `_rule` section is finalised.

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
  "_required" : {
    "_selection-descriptors_any" : [
      "_min-range-inclusive",
      "_min-range-exclusive",
      "_max-range-inclusive",
      "_max-range-exclusive"
    ],
    "_selection-descriptors_one-none-of" : [
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
