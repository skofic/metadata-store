# `_selection_type`

**`_title`**

Type of selection

**`_definition`**

The cardinality mode of a selection rule. An enumeration element from the `_type_selection` controlled vocabulary. `_type_selection_mandatory` requires all governed items to contribute; `_type_selection_optional` allows any subset.

**`_description`**

`_selection_type` is a required property of [`_selection_rule`](_selection_rule.md). Its value is an enumeration element drawn from the [`_type_selection`](_type_selection.md) vocabulary.

Two values are defined:

- [`_type_selection_mandatory`](_type_selection_mandatory.md): all descriptor keys (or all inner arrays in a nested structure) in the governed set must contribute. When combined with [`_elements`](_elements.md), the count is further constrained.
- [`_type_selection_optional`](_type_selection_optional.md): any subset of the descriptor keys may contribute, including none. When combined with `_elements`, a minimum and/or maximum count is enforced.

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_selection_type",
  "_lid" : "type",
  "_nid" : "_selection"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_enum_types" : [
      "_type_selection"
    ],
    "_scalar_type" : "_type_enum"
  }
}
```
