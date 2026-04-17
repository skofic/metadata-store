# Enumeration source
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_role_enum-source</code></p>

> A term role indicating that the term serves as the source of a controlled vocabulary: its `_gid` appears in the `_enums` property of at least one descriptor. Computed automatically.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term role](_term_role.md) |
| [Local identifier](_lid.md) | `enum-source` |
| [Global identifier](_gid.md) | `_term_role_enum-source` |
| [Official identifiers](_aid.md) | `enum-source` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "enum-source"
  ],
  "_gid" : "_term_role_enum-source",
  "_lid" : "enum-source",
  "_nid" : "_term_role"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration source

**[Definition](_definition.md):** A term role indicating that the term serves as the source of a controlled vocabulary: its `_gid` appears in the `_enums` property of at least one descriptor. Computed automatically.

**[Description](_description.md)**

When a descriptor restricts an [`_enum`](_enum.md) value to a specific set of controlled vocabularies, it lists their root [`_gid`](_gid.md)s in the [`_enums`](_enums.md) array. Any term found in such an array is automatically tagged with `_term_role_enum-source`.

This role differs from [`_term_role_enum-root`](_term_role_enum-root.md), which is assigned to terms that structurally head an enumeration graph (at least one [`_predicate_enum-of`](_predicate_enum-of.md) member exists). A term may hold both roles, or either one alone:

- **Both roles**: a live vocabulary actively referenced by descriptors.
- **[`_term_role_enum-root`](_term_role_enum-root.md) only**: a vocabulary with members that no descriptor currently references via `_enums`.
- **`_term_role_enum-source` only**: a vocabulary declared as available (cited in `_enums`) but not yet populated with elements — for example [`_domain`](_domain.md), [`_category`](_category.md), and [`_tag`](_tag.md).

This role is computed automatically by the `assign-roles` workflow and cannot be manually set.

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
    "ISO_639_3_eng" : "Enumeration source"
  }
}
```

</details>
