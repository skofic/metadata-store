# `_predicate_enum-of`

**`_title`**

Enumeration of

**`_definition`**

The source node is a valid enumeration element of the destination node's controlled vocabulary.

**`_description`**

The [source node](_from.md) is an *enumeration element* belonging to the [destination node](_to.md). Enumerations are *controlled vocabularies* organised as directed graphs. The destination node may be the enumeration root, another enumeration element (for hierarchical vocabularies), or a [container node](_predicate_container.md) that groups elements under a section heading. This predicate is the primary functional predicate followed during enumeration validation — a value is valid if and only if a path of `_predicate_enum-of` edges connects it to the vocabulary root.

**`_examples`**

```json
{
	"_from": "terms/ISO_3166_1_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_1",
	"_path": ["terms/ISO_3166_1"],
	"_path_data": {}
}
```

This [edge](_edge.md) declares `ISO_3166_1_ITA` (Italy) as a valid element of the `ISO_3166_1` country vocabulary.

```json
{
	"_from": "terms/ISO_3166_1_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/EUROPE",
	"_path": ["terms/ISO_3166_1"],
	"_path_data": {}
},
{
	"_from": "terms/EUROPE",
	"_predicate": "_predicate_section-of",
	"_to": "terms/ISO_3166_1",
	"_path": ["terms/ISO_3166_1"],
	"_path_data": {}
}
```

These two edges connect Italy to the `ISO_3166_1` vocabulary through a `EUROPE` section. During validation, the section node is skipped and Italy is found directly. During display, the vocabulary is shown grouped by region.

---

**`_code`**

```json
{
  "_aid" : [
    "enum-of"
  ],
  "_gid" : "_predicate_enum-of",
  "_lid" : "enum-of",
  "_nid" : "_predicate"
}
```
