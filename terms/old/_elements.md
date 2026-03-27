# `_elements`

**`_title`**

Element count range

**`_definition`**

Defines the allowed range of element counts for a container. At least one bound must be present; both bounds are optional and inclusive.

**`_description`**

Constrains the number of elements in an [array](_array.md), [set](_set.md), or other container type. Both bounds are optional: omitting [`_min-items`](_min-items.md) leaves the lower end open; omitting [`_max-items`](_max-items.md) leaves the upper end open. At least one bound must be present — an empty `_elements` object is invalid.

**`_examples`**

```json
{
	"_elements": {
		"_min-items": 1,
		"_max-items": 8
	}
}
```
The [array](_array.md) or [set](_set.md) must contain between `1` and `8` elements, inclusive.



```json
{
	"_elements": {
		"_min-items": 0
	}
}
```
No lower bound is imposed; the container may be empty or hold any number of elements.



```json
{
	"_elements": {
		"_max-items": 10
	}
}
```
The [array](_array.md) or [set](_set.md) may contain at most `10` elements.

---

**`_code`**

```json
{
  "_aid" : [
    "elements"
  ],
  "_gid" : "_elements",
  "_lid" : "elements",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_elements"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : {
    "_selection-descriptors_any" : [
      "_min-items",
      "_max-items"
    ]
  }
}
```
