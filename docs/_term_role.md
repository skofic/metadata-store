# `_term_role`

**`_title`**

Term role

**`_definition`**

A set of enumeration values drawn from the `_term_role` controlled vocabulary, recording the roles a term plays within the dictionary. Stored in the [`_domn`](_domn.md) section. Most roles are assigned automatically by the loader; [`_term_role_type`](_term_role_type.md) and [`_term_role_typedef`](_term_role_typedef.md) are user-assigned.

**`_description`**

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

---

**`_code`**

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

**`_data`**

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
