# Banned by
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_banned-by</code></p>

> The source variable must not be present in a dataset record whenever the destination variable is present. A dataset record containing both `_to` and `_from` must be rejected.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `banned-by` |
| [Global identifier](_gid.md) | `_predicate_banned-by` |
| [Official identifiers](_aid.md) | `banned-by` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Banned by

**[Definition](_definition.md):** The source variable must not be present in a dataset record whenever the destination variable is present. A dataset record containing both `_to` and `_from` must be rejected.

**[Description](_description.md)**

`_predicate_banned-by` expresses a mutual exclusion constraint between two dataset variables. An edge with this predicate states: if [`_to`](_to.md) is present in a submitted dataset record, then [`_from`](_from.md) must be absent; a record containing both is invalid.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **mainly used in the dataset validation layer**. Schema constraints within the dictionary itself are expressed through object structure rules in the [`_data`](_data.md) section and conditional edge rules.

Typical use case: two variables that represent the same measurement in different units or protocols cannot both appear in the same record — the presence of one makes the other redundant or contradictory.

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
    "ISO_639_3_eng" : "Banned by"
  }
}
```

</details>
