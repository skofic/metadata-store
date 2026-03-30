# `_nested`

**`_title`**

Nested Array

**`_definition`**

The shape property for a recursively nested array whose leaf elements are of a comparable type. The required `_comparable` section defines the data type of the elements at the innermost level.

**`_description`**

A *nested array* is an array of arrays, recursing to an arbitrary depth, whose leaf elements are all of the same comparable type. It differs from a recursive [`_array`](_array.md) in that the nesting structure is uniform and the leaf type is declared once — in the required [`_comparable`](_comparable.md) section — rather than being specified at each level of recursion.

The primary use of `_nested` is in the [`_required`](_required.md) selection mechanism: the [`_selection_descriptors`](_selection_descriptors.md) property uses this shape to describe multi-level selection structures. The depth of nesting in a `_selection_descriptors` value must match the number of elements in the corresponding [`_selection_rules`](_selection_rules.md) array.

The optional [`_elements`](_elements.md) property constrains the number of elements at each level of the array.

**`_examples`**

A nested array of string descriptor keys, two levels deep — used as [`_selection_descriptors`](_selection_descriptors.md) with two selection rules:

```json
{"_nested": {"_comparable": {"_comparable_type": "_type_string"}}}
```

With the corresponding two-rule selector, the value at validation time would look like:

```json
[["_lid", "_gid"], ["_nid"]]
```

The outer array contains one inner array per selection rule; each inner array contains the descriptor keys governed by that rule.

---

**`_code`**

```json
{
  "_aid" : [
    "nested"
  ],
  "_gid" : "_nested",
  "_lid" : "nested",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_nested"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_elements"
  ],
  "_required" : [
    {
      "_selection_descriptors" : [
        "_comparable"
      ],
      "_selection_rules" : [
        {
          "_selection_type" : "_type_selection_mandatory"
        }
      ]
    }
  ]
}
```
