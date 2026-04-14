# Section of
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_section-of</code></p>

> The source node is a display-only section (grouping header) within the destination graph. The source node and this edge are skipped during validation traversal; during display they serve as collapsible group headers for the elements nested below.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_predicate` |
| [Local identifier](_lid.md) | `section-of` |
| [Global identifier](_gid.md) | `_predicate_section-of` |
| [Official identifiers](_aid.md) | `section-of` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_predicate",
  "_lid": "section-of",
  "_gid": "_predicate_section-of",
  "_aid": [
    "section-of"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Section of

**[Definition](_definition.md):** The source node is a display-only section (grouping header) within the destination graph. The source node and this edge are skipped during validation traversal; during display they serve as collapsible group headers for the elements nested below.

**[Description](_description.md)**

`_predicate_section-of` marks a term as a section node within a controlled vocabulary graph. An edge with this predicate states that [`_from`](_from.md) is a grouping header within the vocabulary rooted at (or traversable from) [`_to`](_to.md).

During **validation traversal** (element lookup, membership testing), section edges and section nodes are completely ignored. Only [`_predicate_enum-of`](_predicate_enum-of.md) edges are followed.

During **display**, section nodes are rendered as collapsible group headers. Elements below a section node appear as its children in the tree or picker UI.

Section nodes may themselves be nested: a section can be `_predicate_section-of` a parent section, enabling multi-level display groupings while the valid element set remains flat from a validation perspective.

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Section of"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>
