# `_predicate_recommended-by`

**`_title`**

Recommended by

**`_definition`**

The source variable is recommended in a dataset record whenever the destination variable is present. A record containing `_to` but lacking `_from` is flagged as incomplete but not rejected.

**`_description`**

`_predicate_recommended-by` expresses a soft co-occurrence expectation between two dataset variables. An edge with this predicate states: if [`_to`](_to.md) is present in a submitted dataset record, then [`_from`](_from.md) is expected but not mandatory — its absence generates a warning rather than a rejection.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **mainly used in the dataset validation layer**. Schema constraints within the dictionary itself are expressed through object structure rules in the [`_data`](_data.md) section and conditional edge rules.

Typical use case: a measurement variable is more meaningful when accompanied by a contextual variable — for example, a body temperature reading is more interpretable when the measurement site (oral, axillary, rectal) is also recorded.

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
