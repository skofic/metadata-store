# `_predicate_structural`

**`_title`**

Structural predicates

**`_definition`**

The sub-vocabulary of predicates reserved for expressing inter-variable dependency constraints in external dataset validation. Not used within the dictionary's own graph.

**`_description`**

Structural predicates encode dependency relationships between dataset variables. They are reserved for the dataset validation layer — when a dataset is submitted, structural predicate edges determine which variables require, forbid, or recommend the presence of other variables in the same record.

Three structural predicates are defined:

- [`_predicate_required-by`](_predicate_required-by.md): when [`_to`](_to.md) is present in a record, [`_from`](_from.md) must also be present.
- [`_predicate_banned-by`](_predicate_banned-by.md): when `_to` is present in a record, `_from` must be absent.
- [`_predicate_recommended-by`](_predicate_recommended-by.md): when `_to` is present in a record, `_from` is expected but not mandatory.

These predicates are **not used within the dictionary's own graph**, which expresses all structural constraints through the [`_rule`](_rule.md) section and `_predicate_property-of` / `_predicate_value-of` edges with `_path_data` rule objects. Structural predicates are a future-phase mechanism, to be activated once the core dictionary is finalised.

As a sub-enumeration root, `_predicate_structural` may be used in [`_enum_types`](_enum_types.md) to constrain a property to structural predicates only.

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
