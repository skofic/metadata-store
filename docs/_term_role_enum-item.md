# `_term_role_enum-item`

**`_title`**

Enumeration option

**`_definition`**

A term role indicating that the term is a valid element (selectable value) of at least one controlled vocabulary. Set automatically.

**`_description`**

Terms tagged with `_term_role_enum-item` are the nodes that represent individual selectable values within a controlled vocabulary. When a descriptor's [`_data`](_data.md) uses [`_enum`](_enum.md) with an [`_enums`](_enums.md) constraint, the stored value must be the [`_gid`](_gid.md) of a term carrying this role within the specified vocabulary.

This role is assigned automatically by the loader when it detects that the term is the source ([`_from`](_from.md)) of at least one [`_predicate_enum-of`](_predicate_enum-of.md) edge. A term may be an element of more than one vocabulary simultaneously, in which case it carries this role once regardless of how many vocabularies it belongs to.

---

**`_code`**

```json
{
  "_aid" : [
    "enum-item"
  ],
  "_gid" : "_term_role_enum-item",
  "_lid" : "enum-item",
  "_nid" : "_term_role"
}
```
