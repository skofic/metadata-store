# Term role
<p style="color: #888; margin-top: -0.5em;"><code>_term_role</code></p>

> A set of enumeration values drawn from the `_term_role` controlled vocabulary, recording the roles a term plays within the dictionary. Stored in the [`_domn`](_domn.md) section. Most roles are assigned automatically by the loader; [`_term_role_type`](_term_role_type.md) and [`_term_role_typedef`](_term_role_typedef.md) are user-assigned.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `term_role` |
| [Global identifier](_gid.md) | `_term_role` |
| [Official identifiers](_aid.md) | `term_role` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "term_role",
  "_gid": "_term_role",
  "_aid": [
    "term_role"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Term role

**[Definition](_definition.md):** A set of enumeration values drawn from the `_term_role` controlled vocabulary, recording the roles a term plays within the dictionary. Stored in the [`_domn`](_domn.md) section. Most roles are assigned automatically by the loader; [`_term_role_type`](_term_role_type.md) and [`_term_role_typedef`](_term_role_typedef.md) are user-assigned.

**[Description](_description.md)**

`_term_role` classifies the functional role of a term within the dictionary. A term may carry more than one role simultaneously — for example, a descriptor term that is also intended as a reusable type definition would carry both `_term_role_descriptor` and `_term_role_typedef`.

The following roles are **set automatically** by the loader based on structural evidence:

| Role | Set when |
|---|---|
| [`_term_role_enum-root`](_term_role_enum-root.md) | The term is the target of at least one `_predicate_enum-of` edge |
| [`_term_role_enum-item`](_term_role_enum-item.md) | The term is the source of at least one `_predicate_enum-of` edge |
| [`_term_role_descriptor`](_term_role_descriptor.md) | The term has a `_data` section |
| [`_term_role_predicate`](_term_role_predicate.md) | The term appears as the `_predicate` value of at least one edge document |

The following roles are **user-assigned**:

| Role | Meaning |
|---|---|
| [`_term_role_type`](_term_role_type.md) | The term defines a data type in the dictionary's type system |
| [`_term_role_typedef`](_term_role_typedef.md) | The term is intended for use as a reusable type definition via `_typedef` |

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Term role"
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

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) of [Enumerated value](_enum.md) from vocabulary `_term_role`

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_enum": {
      "_enums": [
        "_term_role"
      ]
    }
  }
}
```

</details>
