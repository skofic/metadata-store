# `_type_term_typedef`

**`_title`**

Type Definition

**`_definition`**

The term type indicating that the term is a type definition — a reusable data shape that other descriptors may reference via `_typedef` instead of defining the shape inline.

**`_description`**

A term marked `_type_term_typedef` carries a [`_data`](_data.md) section with an inline shape definition that may be reused by other descriptors. A referencing descriptor places the typedef term's [`_gid`](_gid.md) in its [`_typedef`](_typedef.md) property instead of writing the shape inline. Typedef terms must define their shape using one of the six concrete inline shape properties and must not themselves use `_typedef` — chaining is prohibited.

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_type_term_typedef",
  "_lid" : "typedef",
  "_nid" : "_type_term"
}
```
