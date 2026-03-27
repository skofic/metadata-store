# `_min-items`

**`_title`**

Minimum element count

**`_definition`**

The inclusive lower bound on the number of elements a container may hold. When absent, no lower bound applies.

**`_description`**

Specifies the minimum number of elements that an [array](_array.md), [set](_set.md), or other container must contain. The bound is *inclusive*: the container must hold *at least* this many elements. A value of `0` imposes no effective lower bound. When this property is absent from [`_elements`](_elements.md), the container may hold any number of elements down to zero.

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
    "_type_scalar" : "_type_number_integer",
    "_valid-range" : {
      "_min-range-inclusive" : 0
    }
  }
}
```
