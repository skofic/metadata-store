# `_type_selection_optional`

**`_title`**

Optional selection

**`_definition`**

A selection rule type indicating that the governed array may contribute any number of elements, including none. When `_elements` is present, it constrains the contribution count.

**`_description`**

`_type_selection_optional` in a [`_selection_rules`](_selection_rules.md) entry means the governed array may contribute zero or more elements. When [`_elements`](_elements.md) specifies `_min-items: 1`, at least one element from the entire descriptor list must be present — making the overall set non-empty while keeping individual leaf arrays optional. Used for "at least one of the following" requirements where any single option is sufficient.

---

**`_code`**

```json
{
	"_nid": "_type_selection",
	"_lid": "optional",
	"_gid": "_type_selection_optional",
	"_aid": ["optional"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
