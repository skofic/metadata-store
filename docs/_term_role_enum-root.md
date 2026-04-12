# `_term_role_enum-root`

**`_title`**

Enumeration root

**`_definition`**

A term role indicating that the term is the root of a controlled vocabulary. The root defines the name and scope of the vocabulary; its `_gid` is used as the value of `_enums` when constraining an `_enum` scalar. Set automatically.

**`_description`**

Terms tagged with `_term_role_enum-root` are the entry points of controlled vocabularies. An enumeration root is the target of [`_predicate_enum-of`](_predicate_enum-of.md) edges whose sources are the valid elements of the vocabulary.

This role is assigned automatically by the loader when it detects that the term is the target ([`_to`](_to.md)) of at least one `_predicate_enum-of` edge. No user action is required.

---

**`_code`**

```json
{
  "_aid" : [
    "enum-root"
  ],
  "_gid" : "_term_role_enum-root",
  "_lid" : "enum-root",
  "_nid" : "_term_role"
}
```
