# `_range_string_max-inclusive`

**`_title`**

String range maximum inclusive

**`_definition`**

The inclusive upper bound of a string range. A value is valid if it is lexicographically less than or equal to this bound.

**`_description`**

`_range_string_max-inclusive` defines the closed upper bound of a string interval. A value *v* satisfies this bound if *v* ≤ `_range_string_max-inclusive` under lexicographic ordering. Mutually exclusive with [`_range_string_max-exclusive`](_range_string_max-exclusive.md) within the same string range object.

---

**`_code`**

```json
{
  "_aid" : [
    "max-inclusive"
  ],
  "_gid" : "_range_string_max-inclusive",
  "_lid" : "max-inclusive",
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
