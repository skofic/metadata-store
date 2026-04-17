# Data shape
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_data-shape</code></p>

> A term role indicating that the term defines a data shape — a structural form that data values may take. User-assigned.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `data-shape` |
| [Global identifier](_gid.md) | `_term_role_data-shape` |
| [Official identifiers](_aid.md) | `data-shape` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "data-shape"
  ],
  "_gid" : "_term_role_data-shape",
  "_lid" : "data-shape",
  "_nid" : "_term_role"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Data shape

**[Definition](_definition.md):** A term role indicating that the term defines a data shape — a structural form that data values may take. User-assigned.

**[Description](_description.md)**

Terms tagged with `_term_role_data-shape` are the top-level shape keys in the [`_data`](_data.md) section: [`_scalar`](_scalar.md), [`_object`](_object.md), [`_array`](_array.md), [`_set`](_set.md), [`_dict`](_dict.md), [`_tuple`](_tuple.md), and [`_nested`](_nested.md). Each defines a different structural form — a single atomic value, a keyed dictionary, an ordered list, and so on.

This role differs from [`_term_role_data-type`](_term_role_data-type.md), which marks the scalar type keys that appear *inside* `_scalar`, `_set`, `_nested`, and `_dict_key` objects. Data-shape terms answer *how is the data structured?*; data-type terms answer *what is the leaf value?*

This role is user-assigned, not computed automatically.

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
    "ISO_639_3_eng" : "Data shape"
  }
}
```

</details>
