# `_range_string`

**`_title`**

String range

**`_definition`**

Typedef that defines the shape of a lexicographic string range object. A range must contain at most one minimum bound (`_string_min-inclusive` or `_string_min-exclusive`) and at most one maximum bound (`_string_max-inclusive` or `_string_max-exclusive`), and at least one bound must be present. Referenced by `_range_valid_string` and `_range_normal_string`.

**`_description`**

`_range_string` is a typedef term defining the shape of a string range object used by [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). It is the string counterpart of [`_range`](_range.md) and follows the same structural rules, but uses string-specific bound properties.

A string range object may contain:
- A lower bound: exactly one of [`_string_min-inclusive`](_string_min-inclusive.md) (≥) or [`_string_min-exclusive`](_string_min-exclusive.md) (>).
- An upper bound: exactly one of [`_string_max-inclusive`](_string_max-inclusive.md) (≤) or [`_string_max-exclusive`](_string_max-exclusive.md) (<).

Comparison is lexicographic (Unicode code-point order). At least one bound must be present.

**`_examples`**

A date range accepting dates from 2000-01-01 through 2099-12-31 (both bounds inclusive):

```json
{
	"_string_min-inclusive": "2000-01-01",
	"_string_max-inclusive": "2099-12-31"
}
```

A half-open range — any date from 2000 onwards:

```json
{
	"_string_min-inclusive": "2000-01-01"
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
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            [
              "_string_min-exclusive",
              "_string_min-inclusive"
            ],
            [
              "_string_max-exclusive",
              "_string_max-inclusive"
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
