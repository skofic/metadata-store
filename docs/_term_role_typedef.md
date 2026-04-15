# Type definition
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_typedef</code></p>

> A term role indicating that the term is intended to serve as a reusable type definition referenced via the `_typedef` mechanism. User-assigned.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `typedef` |
| [Global identifier](_gid.md) | `_term_role_typedef` |
| [Official identifiers](_aid.md) | `typedef` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Type definition

**[Definition](_definition.md):** A term role indicating that the term is intended to serve as a reusable type definition referenced via the `_typedef` mechanism. User-assigned.

**[Description](_description.md)**

Terms tagged with `_term_role_typedef` are descriptor terms whose primary purpose is to define a reusable data shape, rather than to represent an actual data variable. Other descriptor terms reference them via [`_data`](_data.md).[`_typedef`](_typedef.md) to inherit their shape without duplicating it.

This role is user-assigned, not computed automatically. By definition, any descriptor term can be referenced as a `_typedef` — the mechanism imposes no structural restriction. Tagging a term with `_term_role_typedef` is a design decision: it signals that the term was created specifically for reuse as a type definition and should not be used as an ordinary variable property in data records.

The three built-in typedef terms — [`_type_scalar`](_type_scalar.md), [`_type_comparable`](_type_comparable.md), and [`_type_key`](_type_key.md) — carry this role.

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
    "ISO_639_3_eng" : "Type definition"
  }
}
```

</details>
