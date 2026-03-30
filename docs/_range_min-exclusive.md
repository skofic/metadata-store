# `_range_min-exclusive`

**`_title`**

Range minimum exclusive

**`_definition`**

The exclusive lower bound of a numeric range. A value is valid if it is strictly greater than this bound.

**`_description`**

`_range_min-exclusive` defines the open lower bound of a numeric interval. A value *v* satisfies this bound if *v* > `_range_min-exclusive`. Mutually exclusive with [`_range_min-inclusive`](_range_min-inclusive.md) within the same range object.

---

**`_code`**

```json
{
  "_aid" : [
    "min-exclusive"
  ],
  "_gid" : "_range_min-exclusive",
  "_lid" : "min-exclusive",
  "_nid" : "_range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_number"
  }
}
```
