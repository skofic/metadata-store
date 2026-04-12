# Structural predicates
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_structural</code></p>

> The sub-vocabulary of predicates for expressing inter-variable dependency constraints in dataset validation. Groups `_predicate_required-by`, `_predicate_banned-by`, and `_predicate_recommended-by`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `structural` |
| [Global identifier](_gid.md) | `_predicate_structural` |
| [Official identifiers](_aid.md) | `structural` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Structural predicates

**[Definition](_definition.md):** The sub-vocabulary of predicates for expressing inter-variable dependency constraints in dataset validation. Groups `_predicate_required-by`, `_predicate_banned-by`, and `_predicate_recommended-by`.

**[Description](_description.md)**

Structural predicates encode dependency relationships between dataset variables. Their main use is in the dataset validation layer — when a dataset is submitted, structural predicate edges determine which variables require, forbid, or recommend the presence of other variables in the same record, ensuring all relevant data is present.

Three structural predicates are defined:

- [`_predicate_required-by`](_predicate_required-by.md): when [`_to`](_to.md) is present in a record, [`_from`](_from.md) must also be present.
- [`_predicate_banned-by`](_predicate_banned-by.md): when `_to` is present in a record, `_from` must be absent.
- [`_predicate_recommended-by`](_predicate_recommended-by.md): when `_to` is present in a record, `_from` is expected but not mandatory.

As a sub-enumeration root, `_predicate_structural` may be used in [`_enum_types`](_enum_types.md) to constrain a property to structural predicates only.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Structural predicates"
  }
}
```

</details>
