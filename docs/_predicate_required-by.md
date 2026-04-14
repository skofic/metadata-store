# Required by
<p style="color: #888; margin-top: -0.5em;"><code>_predicate_required-by</code></p>

> The source variable must be present in a dataset record whenever the destination variable is present. A dataset record containing `_to` but lacking `_from` must be rejected.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_predicate` |
| [Local identifier](_lid.md) | `required-by` |
| [Global identifier](_gid.md) | `_predicate_required-by` |
| [Official identifiers](_aid.md) | `required-by` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_predicate",
  "_lid": "required-by",
  "_gid": "_predicate_required-by",
  "_aid": [
    "required-by"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Required by"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>
