# `_predicate_structural`

**`_title`**

Structural predicate

**`_definition`**

A predicate category grouping predicates that encode dataset-level dependencies between descriptors.

**`_description`**

Predicates fall into four categories: [functional](_predicate_functional.md), *structural*, [container](_predicate_container.md), and [bridge](_predicate_bridge.md). Structural predicates are **not** used to define term schemas — that role belongs to the [`_rule`](_rule.md) section and the [`_predicate_value-of`](_predicate_value-of.md) graph. Instead, structural predicates express *dataset-level dependencies*: constraints that arise from the co-occurrence of descriptors within a dataset, independently of the schema of any individual term.

For example, if a dataset includes a measurement variable that requires a date, or if the presence of one variable forbids another, these cross-descriptor dependencies are encoded with structural predicates.

The structural predicates are:

- [`_predicate_required-by`](_predicate_required-by.md): the source descriptor is required whenever the destination descriptor is present in a dataset.
- [`_predicate_banned-by`](_predicate_banned-by.md): the source descriptor must not appear in a dataset that contains the destination descriptor.
- [`_predicate_recommended-by`](_predicate_recommended-by.md): the source descriptor is recommended whenever the destination descriptor is present in a dataset.

---

**`_code`**

```json
{
  "_aid" : [
    "structural"
  ],
  "_gid" : "_predicate_structural",
  "_lid" : "structural",
  "_nid" : "_predicate"
}
```
