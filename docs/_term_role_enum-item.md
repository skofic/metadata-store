# Enumeration option
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_enum-item</code></p>

> A term role indicating that the term is a valid element (selectable value) of at least one controlled vocabulary. Set automatically.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_role` |
| [Local identifier](_lid.md) | `enum-item` |
| [Global identifier](_gid.md) | `_term_role_enum-item` |
| [Official identifiers](_aid.md) | `enum-item` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_role",
  "_lid": "enum-item",
  "_gid": "_term_role_enum-item",
  "_aid": [
    "enum-item"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration option

**[Definition](_definition.md):** A term role indicating that the term is a valid element (selectable value) of at least one controlled vocabulary. Set automatically.

**[Description](_description.md)**

Terms tagged with `_term_role_enum-item` are the nodes that represent individual selectable values within a controlled vocabulary. When a descriptor's [`_data`](_data.md) uses [`_enum`](_enum.md) with an [`_enums`](_enums.md) constraint, the stored value must be the [`_gid`](_gid.md) of a term carrying this role within the specified vocabulary.

This role is assigned automatically by the loader when it detects that the term is the source ([`_from`](_from.md)) of at least one [`_predicate_enum-of`](_predicate_enum-of.md) edge. A term may be an element of more than one vocabulary simultaneously, in which case it carries this role once regardless of how many vocabularies it belongs to.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Enumeration option"
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
