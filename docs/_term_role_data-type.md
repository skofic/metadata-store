# Data type
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_data-type</code></p>

> A term role indicating that the term defines a scalar data type within the dictionary's type system. User-assigned.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `data-type` |
| [Global identifier](_gid.md) | `_term_role_data-type` |
| [Official identifiers](_aid.md) | `data-type` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "data-type"
  ],
  "_gid" : "_term_role_data-type",
  "_lid" : "data-type",
  "_nid" : "_term_role"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Data type

**[Definition](_definition.md):** A term role indicating that the term defines a scalar data type within the dictionary's type system. User-assigned.

**[Description](_description.md)**

Terms tagged with `_term_role_data-type` represent named scalar data types — the type keys that appear inside [`_scalar`](_scalar.md), [`_set`](_set.md), [`_nested`](_nested.md), and [`_dict_key`](_dict_key.md) objects. Examples from the core dictionary include [`_number`](_number.md), [`_string`](_string.md), [`_boolean`](_boolean.md), and [`_enum`](_enum.md).

This role is assigned by the user, not computed automatically. It signals that the term's primary purpose is to define a type for use in the type-as-key convention, rather than to represent a generic variable or a real-world entity.

This role differs from [`_term_role_data-shape`](_term_role_data-shape.md), which marks the top-level structural containers in `_data` (such as `_scalar`, `_object`, `_array`). Data-type terms answer *what is the leaf value?*; data-shape terms answer *how is the data organised?*

**[Notes](_notes.md)**

The `_term_role_data-type` classification can be used by validator implementations to trigger type-specific validation code when processing the [`_data`](_data.md) section of descriptor terms. By querying which terms carry this role, a validator can dynamically load or dispatch the correct validation routine for each type key it encounters.

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
  "_notes" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Data type"
  }
}
```

</details>
