# Term role
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_enum-source.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration source</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role</code></p>

> A set of enumeration values drawn from the `_term_role` controlled vocabulary, recording the roles a term plays within the dictionary. Stored in the [`_domn`](_domn.md) section. Most roles are assigned automatically by the loader; [`_term_role_data-type`](_term_role_data-type.md), [`_term_role_data-shape`](_term_role_data-shape.md), and [`_term_role_typedef`](_term_role_typedef.md) are user-assigned.

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
  "_aid" : [
    "term_role"
  ],
  "_gid" : "_term_role",
  "_lid" : "term_role",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Term role

**[Definition](_definition.md):** A set of enumeration values drawn from the `_term_role` controlled vocabulary, recording the roles a term plays within the dictionary. Stored in the [`_domn`](_domn.md) section. Most roles are assigned automatically by the loader; [`_term_role_data-type`](_term_role_data-type.md), [`_term_role_data-shape`](_term_role_data-shape.md), and [`_term_role_typedef`](_term_role_typedef.md) are user-assigned.

**[Description](_description.md)**

`_term_role` classifies the functional role of a term within the dictionary. A term may carry more than one role simultaneously — for example, a descriptor term that is also intended as a reusable type definition would carry both [`_term_role_descriptor`](_term_role_descriptor.md) and [`_term_role_typedef`](_term_role_typedef.md).

The following roles are **set automatically** by the loader based on structural evidence:

| Role | Set when |
|---|---|
| [`_term_role_enum-root`](_term_role_enum-root.md) | The term is the target of at least one [`_predicate_enum-of`](_predicate_enum-of.md) edge |
| [`_term_role_enum-item`](_term_role_enum-item.md) | The term is the source of at least one `_predicate_enum-of` edge |
| `_term_role_descriptor` | The term has a [`_data`](_data.md) section |
| [`_term_role_predicate`](_term_role_predicate.md) | The term appears as the [`_predicate`](_predicate.md) value of at least one edge document |
| [`_term_role_namespace`](_term_role_namespace.md) | The term's [`_gid`](_gid.md) appears as the [`_nid`](_nid.md) of at least one other term |

The following roles are **user-assigned**:

| Role | Meaning |
|---|---|
| [`_term_role_data-type`](_term_role_data-type.md) | The term defines a scalar data type in the dictionary's type system |
| [`_term_role_data-shape`](_term_role_data-shape.md) | The term defines a data shape — a top-level structural form in the [`_data`](_data.md) section |
| `_term_role_typedef` | The term is intended for use as a reusable type definition via [`_typedef`](_typedef.md) |

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
    "ISO_639_3_eng" : "Term role"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [Term role](_term_role.md))

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_enum" : {
      "_enums" : [
        "_term_role"
      ]
    }
  }
}
```

</details>
