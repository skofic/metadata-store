# Enumeration root
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_enum-root</code></p>

> A term role indicating that the term is the root of a controlled vocabulary. The root defines the name and scope of the vocabulary; its `_gid` is used as the value of `_enums` when constraining an `_enum` scalar. Set automatically.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_role` |
| [Local identifier](_lid.md) | `enum-root` |
| [Global identifier](_gid.md) | `_term_role_enum-root` |
| [Official identifiers](_aid.md) | `enum-root` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_role",
  "_lid": "enum-root",
  "_gid": "_term_role_enum-root",
  "_aid": [
    "enum-root"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration root

**[Definition](_definition.md):** A term role indicating that the term is the root of a controlled vocabulary. The root defines the name and scope of the vocabulary; its `_gid` is used as the value of `_enums` when constraining an `_enum` scalar. Set automatically.

**[Description](_description.md)**

Terms tagged with `_term_role_enum-root` are the entry points of controlled vocabularies. An enumeration root is the target of [`_predicate_enum-of`](_predicate_enum-of.md) edges whose sources are the valid elements of the vocabulary.

This role is assigned automatically by the loader when it detects that the term is the target ([`_to`](_to.md)) of at least one `_predicate_enum-of` edge. No user action is required.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Enumeration root"
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
