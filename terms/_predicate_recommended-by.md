# `_predicate_recommended-by`

**`_title`**

Recommended by

**`_definition`**

The source descriptor is recommended in any dataset that contains the destination descriptor.

**`_description`**

This [predicate](_predicate.md) is a *structural predicate* reserved for *dataset-level dependency graphs*. It is not used to define term schemas — schema constraints are expressed in the [`_rule`](_rule.md) section and the [`_predicate_value-of`](_predicate_value-of.md) graph.

A `_predicate_recommended-by` edge states that the [source](_from.md) descriptor is recommended (but not required) whenever the [destination](_to.md) descriptor appears in a dataset. This expresses a soft co-occurrence suggestion — for example, recommending that a dataset including body weight also includes height, to allow BMI to be computed.

---

**`_code`**

```json
{
  "_aid" : [
    "recommended-by"
  ],
  "_gid" : "_predicate_recommended-by",
  "_lid" : "recommended-by",
  "_nid" : "_predicate"
}
```
