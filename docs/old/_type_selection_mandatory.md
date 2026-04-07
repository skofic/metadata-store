# `_type_selection_mandatory`

**`_title`**

Mandatory selection

**`_definition`**

A selection rule type indicating that the governed array must contribute elements. When `_elements` is present in the same rule, it specifies exactly how many elements must be contributed.

**`_description`**

`_type_selection_mandatory` in a [`_selection_rules`](_selection_rules.md) entry means the governed array (whether a flat set or a nested leaf array) must contribute at least one element — or exactly as many as [`_elements`](_elements.md) specifies. This is used to express requirements like "exactly one from this pair" (using `_elements` with both [`_min-items`](_min-items.md)`: 1` and [`_max-items`](_max-items.md)`: 1`).

---

**`_code`**

```json
{
  "_aid" : [
    "mandatory"
  ],
  "_gid" : "_type_selection_mandatory",
  "_lid" : "mandatory",
  "_nid" : "_type_selection"
}
```
