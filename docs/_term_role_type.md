# Data type
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_type</code></p>

> A term role indicating that the term defines a data type within the dictionary's type system. User-assigned.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_role` |
| [Local identifier](_lid.md) | `type` |
| [Global identifier](_gid.md) | `_term_role_type` |
| [Official identifiers](_aid.md) | `type` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_role",
  "_lid": "type",
  "_gid": "_term_role_type",
  "_aid": [
    "type"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Data type

**[Definition](_definition.md):** A term role indicating that the term defines a data type within the dictionary's type system. User-assigned.

**[Description](_description.md)**

Terms tagged with `_term_role_type` represent named data types — the type keys that appear inside [`_scalar`](_scalar.md), [`_set`](_set.md), [`_nested`](_nested.md), and [`_dict_key`](_dict_key.md) objects. Examples from the core dictionary include [`_number`](_number.md), [`_string`](_string.md), [`_boolean`](_boolean.md), and [`_enum`](_enum.md).

This role is assigned by the user, not computed automatically. It signals that the term's primary purpose is to define a type for use in the type-as-key convention, rather than to represent a generic variable or a real-world entity.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Data type"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_notes": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>
