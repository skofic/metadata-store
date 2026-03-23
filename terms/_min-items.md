# `_min-items`

**`_title`**

Minimum number of elements

**`_definition`**

This field indicates the minimum number of elements an item may contain.

**`_description`**

This field can be used to indicate the *minimum number* of *elements* an item may contain. The property is used by the elements range [descriptor](_elements.md) to indicate the minimum bound for [array](_array.md) and [set](_set.md) data [container](_data.md) [elements](_elements.md).

The value is an *integer* and the *bound* is *inclusive*, the item to which the property refers to cannot have *less* elements than the value held by this field.

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
    "_kind_number" : [
      "_kind_number_integer"
    ],
    "_type" : "_type_number",
    "_valid-range" : {
      "_min-range-inclusive" : 0
    }
  }
}
```
