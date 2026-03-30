# `_range_string_min-inclusive`

**`_title`**

String range minimum inclusive

**`_definition`**

The inclusive lower bound of a string range. A value is valid if it is lexicographically greater than or equal to this bound.

**`_description`**

`_range_string_min-inclusive` defines the closed lower bound of a string interval. A value *v* satisfies this bound if *v* ≥ `_range_string_min-inclusive` under lexicographic ordering. Mutually exclusive with [`_range_string_min-exclusive`](_range_string_min-exclusive.md) within the same string range object.

---

**`_code`**

```json
{
  "_aid" : [
    "min-inclusive"
  ],
  "_gid" : "_range_string_min-inclusive",
  "_lid" : "min-inclusive",
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
