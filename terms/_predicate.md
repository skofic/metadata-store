# `_predicate`

**`_title`**

Relationship predicate

**`_definition`**

Type or classification of the relationship between two nodes in an edge.

**`_description`**

A relationship predicate qualifies the *type*, *nature*, or *class* of a directed relationship between two nodes in an [edge](_edge.md). The combination of [source](_from.md), predicate, and [destination](_to.md) must be unique — no two edges may share the same triple.

The predicate value is the [`_key`](_key.md) of a term that identifies the relationship type. This term is itself the *root* of a controlled vocabulary enumerating the dictionary's built-in predicates. Predicates are grouped into four categories:

- **[Functional](_predicate_functional.md)**: carry domain meaning and are followed during graph traversal — [`_predicate_enum-of`](_predicate_enum-of.md), [`_predicate_property-of`](_predicate_property-of.md), [`_predicate_field-of`](_predicate_field-of.md), [`_predicate_value-of`](_predicate_value-of.md).
- **[Structural](_predicate_structural.md)**: reserved for dataset-level dependency graphs — [`_predicate_required-by`](_predicate_required-by.md), [`_predicate_banned-by`](_predicate_banned-by.md), [`_predicate_recommended-by`](_predicate_recommended-by.md).
- **[Container](_predicate_container.md)**: grouping aids used during display but skipped during validation — [`_predicate_section-of`](_predicate_section-of.md).
- **[Bridge](_predicate_bridge.md)**: allow a graph to include elements from another graph without duplicating edges — [`_predicate_bridge-of`](_predicate_bridge-of.md).

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
    "_kind_enum" : [
      "_predicate"
    ],
    "_type_scalar" : "_type_enum"
  }
}
```
