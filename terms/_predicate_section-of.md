# `_predicate_section-of`

**`_title`**

Section of

**`_definition`**

The source node is a grouping section or disclosure container within the destination graph.

**`_description`**

This [predicate](_predicate.md) groups graph elements under a named heading or disclosure section for categorisation or display purposes.

The [source](_from.md) node acts as the section container; the elements of the section are connected to it via [functional predicates](_predicate_functional.md). During *validation traversal*, section nodes are skipped — only functional edges are followed.

During *display*, section nodes appear as collapsible headers that group their members.

**`_examples`**

```json
{
	"_from": "terms/EUROPE",
	"_predicate": "_predicate_section-of",
	"_to": "terms/ISO_3166_1",
	"_path": ["terms/ISO_3166_1"],
	"_path_data": {}
}
```

This [edge](_edge.md) makes `EUROPE` a section container within the `ISO_3166_1` vocabulary.

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

Together, these two edges group Italy under the `EUROPE` section of the `ISO_3166_1` country vocabulary. Validation ignores `EUROPE` and finds Italy directly; display shows countries organised by region.

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
