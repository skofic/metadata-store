# `_term_role_descriptor`

**`_title`**

Descriptor

**`_definition`**

A term role indicating that the term is a descriptor — a typed data variable whose type and shape are defined by its `_data` section. Set automatically.

**`_description`**

Terms tagged with `_term_role_descriptor` represent data variables: they describe what kind of value a field holds, not a classification or a real-world entity. Descriptors are the terms that appear as property keys within [`_data`](_data.md) schemas (in [`_required`](_required.md), [`_recommended`](_recommended.md), [`_computed`](_computed.md), etc.) and as the keys of [`_prop`](_prop.md) objects.

This role is assigned automatically by the loader when it detects that the term has a `_data` section, regardless of whether that section is empty or fully specified.

---

**`_code`**

```json
{
  "_aid" : [
    "descriptor"
  ],
  "_gid" : "_term_role_descriptor",
  "_lid" : "descriptor",
  "_nid" : "_term_role"
}
```
