# `_range_string_min-exclusive`

**`_title`**

String range minimum exclusive

**`_definition`**

The exclusive lower bound of a string range. A value is valid if it is lexicographically strictly greater than this bound.

**`_description`**

`_range_string_min-exclusive` defines the open lower bound of a string interval. A value *v* satisfies this bound if *v* > `_range_string_min-exclusive` under lexicographic ordering. Mutually exclusive with [`_range_string_min-inclusive`](_range_string_min-inclusive.md) within the same string range object.

---

**`_code`**

```json
{
  "_aid" : [
    "min-exclusive"
  ],
  "_gid" : "_range_string_min-exclusive",
  "_lid" : "min-exclusive",
  "_nid" : "_range_string"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_string"
  }
}
```
