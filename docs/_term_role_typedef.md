# `_term_role_typedef`

**`_title`**

Type definition

**`_definition`**

A term role indicating that the term is intended to serve as a reusable type definition referenced via the `_typedef` mechanism. User-assigned.

**`_description`**

Terms tagged with `_term_role_typedef` are descriptor terms whose primary purpose is to define a reusable data shape, rather than to represent an actual data variable. Other descriptor terms reference them via [`_data`](_data.md).[`_typedef`](_typedef.md) to inherit their shape without duplicating it.

This role is user-assigned, not computed automatically. By definition, any descriptor term can be referenced as a `_typedef` — the mechanism imposes no structural restriction. Tagging a term with `_term_role_typedef` is a design decision: it signals that the term was created specifically for reuse as a type definition and should not be used as an ordinary variable property in data records.

The three built-in typedef terms — [`_type_scalar`](_type_scalar.md), [`_type_set`](_type_set.md), and [`_type_key`](_type_key.md) — carry this role.

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_term_role_typedef",
  "_lid" : "typedef",
  "_nid" : "_term_role"
}
```
