# `_type_selection`

**`_title`**

Selector type

**`_definition`**

Root of the controlled vocabulary for selection rule types. Used in the `_selection_type` property to govern how elements are selected from leaf arrays in selection structures.

**`_description`**

`_type_selection` is the enumeration root for selection rule types. Each value specifies how elements must be chosen from a leaf array (or flat set) governed by a [`_selection_rules`](_selection_rules.md) entry. Two values are defined: [`_type_selection_mandatory`](_type_selection_mandatory.md), meaning the governed array must contribute elements, and [`_type_selection_optional`](_type_selection_optional.md), meaning it may or may not. Rules in a `_selection_rules` array are applied from the innermost arrays outward.

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "selection",
	"_gid": "_type_selection",
	"_aid": ["selection"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root"]
}
```
