# `_max-items`

**`_title`**

Maximum element count

**`_definition`**

The maximum number of elements a collection may contain. The bound is inclusive. A positive integer.

**`_description`**

`_max-items` sets the inclusive upper bound on the number of elements in an [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), or [`_tuple`](_tuple.md). A collection is valid only if its element count is less than or equal to this value.

When `_max-items` is absent, no upper limit is imposed on the collection size. For `_tuple`, the length of [`_tuple_type`](_tuple_type.md) acts as an absolute upper bound regardless of this value. The value must be a positive integer (at least 1).

---

**`_code`**

```json
{
  "_aid" : [
    "max-items"
  ],
  "_gid" : "_max-items",
  "_lid" : "max-items",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_range_valid" : {
      "_range_min-inclusive" : 1
    },
    "_scalar_type" : "_type_number_integer"
  }
}
```
