# `_predicate_required-by`

**`_title`**

Required by

**`_definition`**

The source descriptor must be present in any dataset that contains the destination descriptor.

**`_description`**

This [predicate](_predicate.md) is a [*structural predicate*](_predicate_structural.md) reserved for *dataset-level dependency graphs*. It is not used to define term schemas — schema constraints are expressed in the [`_rule`](_rule.md) section and the [`_predicate_value-of`](_predicate_value-of.md) graph.

A [`_predicate_required-by`](_predicate_required-by.md) edge states that the [source](_from.md) descriptor must appear in any dataset that contains the [destination](_to.md) descriptor. This expresses a co-occurrence requirement between variables in a dataset — for example, a measurement variable that is meaningless without an accompanying date or location variable.

---

**`_code`**

```json
{
  "_aid" : [
    "required-by"
  ],
  "_gid" : "_predicate_required-by",
  "_lid" : "required-by",
  "_nid" : "_predicate"
}
```
