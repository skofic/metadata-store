# `_selection`

**`_title`**

Selections

**`_definition`**

Namespace for selection structure terms. Contains the descriptors and object definitions used to express cardinality constraints within `_required`.

**`_description`**

`_selection` is the namespace for terms that make up the selection structure used in [`_required`](_required.md). The selection structure combines [`_selection_rules`](_selection_rules.md) — cardinality constraints — with [`_selection_descriptors`](_selection_descriptors.md) — the descriptor keys those constraints govern — inside a [`_rule_selector`](_rule_selector.md) object.

This namespace is a sibling of [`_rule`](_rule.md) in the core dictionary. Its terms are used exclusively within the `_required` property of rule objects.

---

**`_code`**

```json
{
  "_aid" : [
    "selection"
  ],
  "_gid" : "_selection",
  "_lid" : "selection",
  "_nid" : ""
}
```
