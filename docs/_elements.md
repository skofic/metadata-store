# `_elements`

**`_title`**

Elements count range

**`_definition`**

An object constraining the minimum and maximum number of elements in a collection. At least one of `_min-items` or `_max-items` must be present.

**`_description`**

`_elements` constrains the cardinality of a collection. It may be added to [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), and [`_tuple`](_tuple.md) sections, and may also be used alongside [`_typedef`](_typedef.md) in an `_array` context.

Both [`_min-items`](_min-items.md) and [`_max-items`](_max-items.md) are optional; omitting one leaves that end of the interval open. An absent `_min-items` means the collection may be empty; an absent `_max-items` means no upper limit is imposed.

**`_examples`**

A collection must contain between 1 and 10 elements:

```json
{"_elements": {"_min-items": 1, "_max-items": 10}}
```

A collection must contain at least 1 element (no upper limit):

```json
{"_elements": {"_min-items": 1}}
```

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
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_min-items",
            "_max-items"
          ],
          "_selectors" : [
            {
              "_any" : {
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```
