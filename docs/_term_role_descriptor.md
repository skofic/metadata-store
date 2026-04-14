# Descriptor
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_descriptor</code></p>

> A term role indicating that the term is a descriptor — a typed data variable whose type and shape are defined by its `_data` section. Set automatically.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_role` |
| [Local identifier](_lid.md) | `descriptor` |
| [Global identifier](_gid.md) | `_term_role_descriptor` |
| [Official identifiers](_aid.md) | `descriptor` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_role",
  "_lid": "descriptor",
  "_gid": "_term_role_descriptor",
  "_aid": [
    "descriptor"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Descriptor

**[Definition](_definition.md):** A term role indicating that the term is a descriptor — a typed data variable whose type and shape are defined by its `_data` section. Set automatically.

**[Description](_description.md)**

Terms tagged with `_term_role_descriptor` represent data variables: they describe what kind of value a field holds, not a classification or a real-world entity. Descriptors are the terms that appear as property keys within [`_data`](_data.md) schemas (in [`_required`](_required.md), [`_recommended`](_recommended.md), [`_computed`](_computed.md), etc.) and as the keys of [`_prop`](_prop.md) objects.

This role is assigned automatically by the loader when it detects that the term has a `_data` section, regardless of whether that section is empty or fully specified.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Descriptor"
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
