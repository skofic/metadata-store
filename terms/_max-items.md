# `_max-items`

**`_title`**

Maximum element count

**`_definition`**

The inclusive upper bound on the number of elements a container may hold. When absent, no upper bound applies.

**`_description`**

Specifies the maximum number of elements that an [array](_array.md), [set](_set.md), or other container may contain. The bound is *inclusive*: the container may hold *at most* this many elements. When this property is absent from [`_elements`](_elements.md), the container may hold any number of elements.

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
    "_type_scalar" : "_type_number_integer",
    "_valid-range" : {
      "_min-range-inclusive" : 0
    }
  }
}
```
