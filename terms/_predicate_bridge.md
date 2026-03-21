# `_predicate_bridge`

**`_title`**

Bridge predicate

**`_definition`**

A predicate category grouping predicates that allow a graph to include elements from another graph without duplicating edges.

**`_description`**

Predicates fall into four categories: [functional](_predicate_functional.md), [structural](_predicate_structural.md), [container](_predicate_container.md), and *bridge*. Bridge predicates connect a custom graph root to an existing graph, signalling that the custom graph shares some of that graph's elements. The bridge node itself is skipped during traversal; the shared elements are found by following edges whose [`_path`](_path.md) set contains both graph roots.

The bridge predicate is:

- [`_predicate_bridge-of`](_predicate_bridge-of.md): the source node (an existing graph root) is bridged into the destination node (a custom graph root). During traversal of the destination graph, the source node is skipped.

---

**`_code`**

```json
{
  "_aid" : [
    "bridge"
  ],
  "_gid" : "_predicate_bridge",
  "_lid" : "bridge",
  "_nid" : "_predicate"
}
```
