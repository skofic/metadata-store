# `_elements`

**`_title`**

Allowed number of elements

**`_definition`**

This field indicates the allowed range of elements for arrays and sets.

**`_description`**

This field is used to *limit* the *number of items* in [arrays](_array.md) or [sets](_set.md). It is a *discrete range* that must be *greater than zero*.

**`_examples`**

```json
{
	"_elements": {
		"_min-items": 1,
		"_max-items": 8
	}
}
```
The [array](_array.md) or [set](_set.md) can have between `1` and `8` elements.



```json
{
	"_elements": {
		"_min-items": 0
	}
}
```
The [array](_array.md) or [set](_set.md) must have at least *one* element.



```json
{
	"_elements": {
		"_max-items": 10
	}
}
```
The [array](_array.md) or [set](_set.md) must have *less* than 10 items.

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
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_required" : {
    "_selection-descriptors_any" : [
      "_min-items",
      "_max-items"
    ]
  }
}
```
