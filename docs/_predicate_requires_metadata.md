# Requires metadata
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_requires_metadata</code></p>

> When the destination characterisation indicator is present in a dataset record, the source metadata descriptor must also be present in the same record.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Requires predicates](_predicate_requires.md) |
| [Local identifier](_lid.md) | `metadata` |
| [Global identifier](_gid.md) | `_predicate_requires_metadata` |
| [Official identifiers](_aid.md) | `metadata` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "metadata"
  ],
  "_gid" : "_predicate_requires_metadata",
  "_lid" : "metadata",
  "_nid" : "_predicate_requires"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Requires metadata

**[Definition](_definition.md):** When the destination characterisation indicator is present in a dataset record, the source metadata descriptor must also be present in the same record.

**[Description](_description.md)**

`_predicate_requires_metadata` encodes a mandatory co-occurrence dependency between a characterisation indicator and a metadata descriptor. An edge with this predicate states: if [`_to`](_to.md) is recorded in a dataset record, then the metadata descriptor [`_from`](_from.md) must also be present; if it is absent, the record is invalid.

This predicate is part of the [`_predicate_requires`](_predicate_requires.md) sub-vocabulary and is used in the dataset validation layer.

Typical use case: a measurement indicator that is only meaningful when contextual metadata is present — for example, a field measurement requires the plot identifier and measurement date to be recorded in the same record.

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
    "ISO_639_3_eng" : "Requires metadata"
  }
}
```

</details>
