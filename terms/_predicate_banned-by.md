# `_predicate_banned-by`

**`_title`**

Banned by

**`_definition`**

The source descriptor must not appear in any dataset that contains the destination descriptor.

**`_description`**

This [predicate](_predicate.md) is a *structural predicate* reserved for *dataset-level dependency graphs*. It is not used to define term schemas — schema constraints are expressed in the [`_rule`](_rule.md) section and the [`_predicate_value-of`](_predicate_value-of.md) graph.

A `_predicate_banned-by` edge states that the [source](_from.md) descriptor must not appear in any dataset that contains the [destination](_to.md) descriptor. This expresses a mutual exclusion between variables in a dataset — for example, two descriptors that measure the same quantity by incompatible methods.

---

**`_code`**

```json
{
  "_aid" : [
    "banned-by"
  ],
  "_gid" : "_predicate_banned-by",
  "_lid" : "banned-by",
  "_nid" : "_predicate"
}
```
