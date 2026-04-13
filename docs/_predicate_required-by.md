# Required by
<p><a href="_term_role_predicate.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Predicate</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_required-by</code></p>

> The source variable must be present in a dataset record whenever the destination variable is present. A dataset record containing `_to` but lacking `_from` must be rejected.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Relationship predicate](_predicate.md) |
| [Local identifier](_lid.md) | `required-by` |
| [Global identifier](_gid.md) | `_predicate_required-by` |
| [Official identifiers](_aid.md) | `required-by` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "required-by"
  ],
  "_gid" : "_predicate_required-by",
  "_lid" : "required-by",
  "_nid" : "_predicate"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Required by

**[Definition](_definition.md):** The source variable must be present in a dataset record whenever the destination variable is present. A dataset record containing `_to` but lacking `_from` must be rejected.

**[Description](_description.md)**

`_predicate_required-by` expresses a mandatory co-occurrence constraint between two dataset variables. An edge with this predicate states: if [`_to`](_to.md) is present in a submitted dataset record, then [`_from`](_from.md) must also be present; if it is absent, the record is invalid.

This predicate is part of the [`_predicate_structural`](_predicate_structural.md) sub-vocabulary and is **mainly used in the dataset validation layer**. Schema constraints within the dictionary itself are expressed through object structure rules in the [`_data`](_data.md) section and conditional edge rules.

Typical use case: a variable representing a derived measurement requires the source variable to also be recorded — for example, a BMI value requires both a body weight and a body height measurement in the same record.

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
    "ISO_639_3_eng" : "Required by"
  }
}
```

</details>
