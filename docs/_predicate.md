# `_predicate`

**`_title`**

Relationship predicate

**`_definition`**

The type or classification of the relationship between two nodes in a directed graph edge. The predicate is the global identifier of a term from the predicate controlled vocabulary.

**`_description`**

A relationship predicate qualifies the nature of the directed relationship between the [source](_from.md) and [destination](_to.md) nodes of an [edge document](_edge.md). The combination of source, predicate, and destination must be unique — no two edges may share the same triple.

The predicate value is the [`_gid`](_gid.md) of a term from the predicate controlled vocabulary, of which `_predicate` is itself the root. Predicates are grouped into four categories:

- **[Functional](_predicate_functional.md)**: carry domain meaning and are followed during graph traversal — [`_predicate_enum-of`](_predicate_enum-of.md), [`_predicate_property-of`](_predicate_property-of.md), [`_predicate_field-of`](_predicate_field-of.md), [`_predicate_value-of`](_predicate_value-of.md).
- **[Structural](_predicate_structural.md)**: reserved for dataset-level dependency graphs — [`_predicate_required-by`](_predicate_required-by.md), [`_predicate_banned-by`](_predicate_banned-by.md), [`_predicate_recommended-by`](_predicate_recommended-by.md).
- **[Section](_predicate_section.md)**: grouping aids used during display but skipped during validation — [`_predicate_section-of`](_predicate_section-of.md).
- **[Bridge](_predicate_bridge.md)**: allow a graph to include elements from another graph without duplicating edges — [`_predicate_bridge-of`](_predicate_bridge-of.md).

The `_predicate` field is immutable once the edge is created.

**`_examples`**

In the following edge, `_predicate` is [`_predicate_enum-of`](_predicate_enum-of.md), declaring that Italy is a valid element of the ISO 3166-3 vocabulary:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_predicate",
  "_lid" : "predicate",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_enum_types" : [
      "_predicate"
    ],
    "_scalar_type" : "_type_enum"
  }
}
```
