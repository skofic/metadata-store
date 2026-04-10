# `_predicate_banned-by`

**`_title`**

Banned by

**`_definition`**

The source variable must not be present in a dataset record whenever the destination variable is present. A dataset record containing both `_to` and `_from` must be rejected.

**`_description`**

`_predicate_banned-by` expresses a mutual exclusion constraint between two dataset variables. An edge with this predicate states: if [`_to`](_to.md) is present in a submitted dataset record, then [`_from`](_from.md) must be absent; a record containing both is invalid.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **mainly used in the dataset validation layer**. Schema constraints within the dictionary itself are expressed through object structure rules in the [`_data`](_data.md) section and conditional edge rules.

Typical use case: two variables that represent the same measurement in different units or protocols cannot both appear in the same record — the presence of one makes the other redundant or contradictory.

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
