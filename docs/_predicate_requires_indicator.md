# Requires indicator
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_requires_indicator</code></p>

> When the destination characterisation indicator is present in a dataset record, the source indicator must also be present in the same record.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Requires predicates](_predicate_requires.md) |
| [Local identifier](_lid.md) | `indicator` |
| [Global identifier](_gid.md) | `_predicate_requires_indicator` |
| [Official identifiers](_aid.md) | `indicator` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "indicator"
  ],
  "_gid" : "_predicate_requires_indicator",
  "_lid" : "indicator",
  "_nid" : "_predicate_requires"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Requires indicator

**[Definition](_definition.md):** When the destination characterisation indicator is present in a dataset record, the source indicator must also be present in the same record.

**[Description](_description.md)**

`_predicate_requires_indicator` encodes a mandatory co-occurrence dependency between two characterisation indicators. An edge with this predicate states: if [`_to`](_to.md) is recorded in a dataset record, then [`_from`](_from.md) must also appear in that record; if it is absent, the record is invalid.

This predicate is part of the [`_predicate_requires`](_predicate_requires.md) sub-vocabulary and is used in the dataset validation layer.

Typical use case: a derived ecophysiological indicator (e.g. a ratio or index) that can only be interpreted when its constituent measurements are also present in the same record.

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
    "ISO_639_3_eng" : "Requires indicator"
  }
}
```

</details>
