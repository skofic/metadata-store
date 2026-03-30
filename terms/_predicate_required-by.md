# `_predicate_required-by`

**`_title`**

Required by

**`_definition`**

The source variable must be present in a dataset record whenever the destination variable is present. A dataset record containing `_to` but lacking `_from` must be rejected.

**`_description`**

`_predicate_required-by` expresses a mandatory co-occurrence constraint between two dataset variables. An edge with this predicate states: if [`_to`](_to.md) is present in a submitted dataset record, then [`_from`](_from.md) must also be present; if it is absent, the record is invalid.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **reserved for the dataset validation layer**. It is not used within the core dictionary's own graph, which expresses schema constraints through [`_rule`](_rule.md) sections and conditional edge rules.

Typical use case: a variable representing a derived measurement requires the source variable to also be recorded — for example, a BMI value requires both a body weight and a body height measurement in the same record.

---

**`_code`**

```json
{
	"_nid": "_predicate",
	"_lid": "required-by",
	"_gid": "_predicate_required-by",
	"_aid": ["required-by"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_predicate"]
}
```
