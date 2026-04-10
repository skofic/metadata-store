# `_range`

**`_title`**

Numeric range

**`_definition`**

Typedef that defines the shape of a numeric range object. A range must contain at most one minimum bound (`_min-inclusive` or `_min-exclusive`) and at most one maximum bound (`_max-inclusive` or `_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid` and `_range_normal`.

**`_description`**

`_range` is a typedef term defining the shape of a numeric range object used by [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md). It is not used directly as a `_data` type — only through `_typedef: "_range"`.

A range object may contain:
- A lower bound: exactly one of [`_min-inclusive`](_min-inclusive.md) (≥) or [`_min-exclusive`](_min-exclusive.md) (>).
- An upper bound: exactly one of [`_max-inclusive`](_max-inclusive.md) (≤) or [`_max-exclusive`](_max-exclusive.md) (<).

At least one bound must be present. Both bounds may be omitted independently — a range with only a lower bound or only an upper bound is valid (open-ended range).

**`_examples`**

A closed interval from 0 to 100 (both bounds inclusive):

```json
{
	"_min-inclusive": 0,
	"_max-inclusive": 100
}
```

A half-open interval — values must be ≥ 0 but may be any size (lower bound only):

```json
{
	"_min-inclusive": 0
}
```

A half-open interval — values must be strictly less than 1.0 (upper bound only):

```json
{
	"_max-exclusive": 1.0
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
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            [
              "_min-exclusive",
              "_min-inclusive"
            ],
            [
              "_max-exclusive",
              "_max-inclusive"
            ]
          ],
          "_selectors" : [
            {
              "_all" : {
                "_max-items" : 1,
                "_min-items" : 1
              }
            },
            {
              "_any" : {
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```
