# `_predicate_section-of`

**`_title`**

Section of

**`_definition`**

The source node is a display-only section (grouping header) within the destination graph. The source node and this edge are skipped during validation traversal; during display they serve as collapsible group headers for the elements nested below.

**`_description`**

`_predicate_section-of` marks a term as a section node within a controlled vocabulary graph. An edge with this predicate states that [`_from`](_from.md) is a grouping header within the vocabulary rooted at (or traversable from) [`_to`](_to.md).

During **validation traversal** (element lookup, membership testing), section edges and section nodes are completely ignored. Only [`_predicate_enum-of`](_predicate_enum-of.md) edges are followed.

During **display**, section nodes are rendered as collapsible group headers. Elements below a section node appear as its children in the tree or picker UI.

Section nodes may themselves be nested: a section can be `_predicate_section-of` a parent section, enabling multi-level display groupings while the valid element set remains flat from a validation perspective.

**`_examples`**

Italy and France are valid elements grouped under a `EUROPE` section header:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/EUROPE",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
},
{
	"_from": "terms/EUROPE",
	"_predicate": "_predicate_section-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

`EUROPE` is skipped during validation; Italy and France are valid values. During display, they appear under a collapsible "Europe" heading.

---

**`_code`**

```json
{
  "_aid" : [
    "section-of"
  ],
  "_gid" : "_predicate_section-of",
  "_lid" : "section-of",
  "_nid" : "_predicate"
}
```
