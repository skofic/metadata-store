# `_predicate_container`

**`_title`**

Container predicate

**`_definition`**

A predicate category grouping predicates that act as display sections or navigation containers within a graph.

**`_description`**

Predicates fall into four categories: [functional](_predicate_functional.md), [structural](_predicate_structural.md), *container*, and [bridge](_predicate_bridge.md). Container predicates do not carry domain meaning. They are used to subdivide a graph into named sections for display purposes — for example, grouping enumeration elements under a regional heading, or organising schema properties under a thematic section. Container nodes are skipped during validation traversal and used only during display.

The container predicate is:

- [`_predicate_section-of`](_predicate_section-of.md): the source node is a grouping section within the destination graph.

---

**`_code`**

```json
{
  "_aid" : [
    "container"
  ],
  "_gid" : "_predicate_container",
  "_lid" : "container",
  "_nid" : "_predicate"
}
```
