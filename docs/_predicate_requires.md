# Requires predicates
<p><a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_requires</code></p>

> The sub-vocabulary of predicates encoding co-occurrence dependencies between characterisation indicators and their required metadata or companion indicators in a dataset record.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `requires` |
| [Global identifier](_gid.md) | `_predicate_requires` |
| [Official identifiers](_aid.md) | `requires` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "requires"
  ],
  "_gid" : "_predicate_requires",
  "_lid" : "requires",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Requires predicates

**[Definition](_definition.md):** The sub-vocabulary of predicates encoding co-occurrence dependencies between characterisation indicators and their required metadata or companion indicators in a dataset record.

**[Description](_description.md)**

The requires sub-vocabulary contains two predicates:

- [`_predicate_requires_indicator`](_predicate_requires_indicator.md): when the destination indicator is present in a dataset record, the source indicator must also be present.
- [`_predicate_requires_metadata`](_predicate_requires_metadata.md): when the destination indicator is present, the source metadata descriptor must also be present.

These predicates are used in the dataset validation layer to enforce co-occurrence rules between characterisation measurements and the contextual or ancillary data that must accompany them.

As a sub-enumeration root, `_predicate_requires` may be used in [`_enums`](_enums.md) to constrain a property to requires predicates only.

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
    "ISO_639_3_eng" : "Requires predicates"
  }
}
```

</details>
