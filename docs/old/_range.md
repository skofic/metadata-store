# `_range`

**`_title`**

Numeric range

**`_definition`**

A numeric range object defining the bounds of an interval. At least one bound must be present; at most one lower-bound and one upper-bound property may be present. Used as the schema for `_range_valid` and `_range_normal`.

**`_description`**

`_range` is an object schema defining the structure of a numeric interval. It contains up to four bound properties: two for the lower end ([`_range_min-inclusive`](_range_min-inclusive.md), [`_range_min-exclusive`](_range_min-exclusive.md)) and two for the upper end ([`_range_max-inclusive`](_range_max-inclusive.md), [`_range_max-exclusive`](_range_max-exclusive.md)). At most one property from each pair may be present; both pairs are optional, so an open interval (no lower or upper bound) is permitted.

This schema is referenced by [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md), which both carry values conforming to it. For string ranges, the parallel schema is [`_range_string`](_range_string.md).

**`_examples`**

A closed interval [0.0, 100.0):

```json
{"_range_min-inclusive": 0.0, "_range_max-exclusive": 100.0}
```

A half-open interval with only a lower bound:

```json
{"_range_min-inclusive": 0}
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
    "_object_types" : [
      "_range"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : [
    {
      "_selection_descriptors" : [
        [
          "_range_min-inclusive",
          "_range_min-exclusive"
        ],
        [
          "_range_max-inclusive",
          "_range_max-exclusive"
        ]
      ],
      "_selection_rules" : [
        {
          "_elements" : {
            "_max-items" : 1,
            "_min-items" : 1
          },
          "_selection_type" : "_type_selection_mandatory"
        },
        {
          "_elements" : {
            "_min-items" : 1
          },
          "_selection_type" : "_type_selection_optional"
        }
      ]
    }
  ]
}
```
