# `_predicate_functional`

**`_title`**

Functional predicate

**`_definition`**

A predicate category grouping predicates that carry domain meaning and are followed during graph traversal.

**`_description`**

Predicates fall into four categories: *functional*, [structural](_predicate_structural.md), [container](_predicate_container.md), and [bridge](_predicate_bridge.md). Functional predicates define the primary semantic relationship between two nodes and are the predicates that traversal algorithms follow when resolving enumeration membership, object schema properties, or value-conditional rules.

The functional predicates are:

- [`_predicate_enum-of`](_predicate_enum-of.md): the source node is a valid enumeration element of the destination node.
- [`_predicate_property-of`](_predicate_property-of.md): the source node is a property descriptor of the destination object definition.
- [`_predicate_field-of`](_predicate_field-of.md): the source node is a field or column of the destination form or table definition.
- [`_predicate_value-of`](_predicate_value-of.md): the source node is a possible value of the destination property; used to encode value-conditional rules in `_path_data`.

---

**`_code`**

```json
{
  "_aid" : [
    "functional"
  ],
  "_gid" : "_predicate_functional",
  "_lid" : "functional",
  "_nid" : "_predicate"
}
```
