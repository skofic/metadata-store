# `_type_timestamp`

**`_title`**

Timestamp

**`_definition`**

The scalar data type for Unix timestamps — integers representing seconds elapsed since 1970-01-01T00:00:00 UTC.

**`_description`**

`_type_timestamp` declares that the value is a Unix timestamp stored as a 64-bit integer. Numeric range constraints via [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md) may be applied. Unlike date-string types, `_type_timestamp` stores an integer and imposes no string formatting. A member of [`_type_data_comparable`](_type_data_comparable.md), but not of [`_type_data_dict_key`](_type_data_dict_key.md) (integers cannot serve as object property names).

---

**`_code`**

```json
{
  "_aid" : [
    "timestamp"
  ],
  "_gid" : "_type_timestamp",
  "_lid" : "timestamp",
  "_nid" : "_type"
}
```
