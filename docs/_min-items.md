# `_min-items`

**`_title`**

Minimum element count

**`_definition`**

The minimum number of elements a collection must contain. The bound is inclusive. A non-negative integer.

**`_description`**

`_min-items` sets the inclusive lower bound on the number of elements in an [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), or [`_tuple`](_tuple.md). A collection is valid only if its element count is greater than or equal to this value.

When `_min-items` is absent, the collection may be empty (element count of zero is permitted). The value must be a non-negative integer.

---

**`_code`**

```json
{
  "_aid" : [
    "min-items"
  ],
  "_gid" : "_min-items",
  "_lid" : "min-items",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_number_integer" : {
      "_range_valid" : {
        "_min-inclusive" : 0
      }
    }
  }
}
```
