# `_predicate_recommended-by`

**`_title`**

Recommended by

**`_definition`**

The source variable is recommended in a dataset record whenever the destination variable is present. A record containing `_to` but lacking `_from` is flagged as incomplete but not rejected.

**`_description`**

`_predicate_recommended-by` expresses a soft co-occurrence expectation between two dataset variables. An edge with this predicate states: if `_to` is present in a submitted dataset record, then `_from` is expected but not mandatory — its absence generates a warning rather than a rejection.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **reserved for the dataset validation layer**. It is not used within the core dictionary's own graph.

Typical use case: a measurement variable is more meaningful when accompanied by a contextual variable — for example, a body temperature reading is more interpretable when the measurement site (oral, axillary, rectal) is also recorded.

---

**`_code`**

```json
{
	"_nid": "_predicate",
	"_lid": "recommended-by",
	"_gid": "_predicate_recommended-by",
	"_aid": ["recommended-by"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_predicate"]
}
```
