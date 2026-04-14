# United Nations Sub-region
<p style="color: #888; margin-top: -0.5em;"><code>UN_Sub-region</code></p>

> The United Nations M.49 sub-region in which a country or territory is located.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `UN` |
| [Local identifier](_lid.md) | `Sub-region` |
| [Global identifier](_gid.md) | `UN_Sub-region` |
| [Official identifiers](_aid.md) | `Sub-region` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "UN",
  "_lid": "Sub-region",
  "_gid": "UN_Sub-region",
  "_aid": [
    "Sub-region"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** United Nations Sub-region

**[Definition](_definition.md):** The United Nations M.49 sub-region in which a country or territory is located.

**[Description](_description.md)**

The UN Statistics Division M.49 standard subdivides each macro-region into sub-regions — more granular geographic groupings used for statistical reporting. For example, the Africa macro-region is divided into Northern Africa, Eastern Africa, Middle Africa, Southern Africa, and Western Africa.

This term serves both as a descriptor (recording the sub-region of a country record) and as the enumeration root for the set of valid sub-region values in the [`UN_M49`](UN_M49.md) namespace.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "United Nations Sub-region"
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

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) from vocabulary `UN_Sub-region`

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_enum": {
      "_enums": "UN_Sub-region"
    }
  }
}
```

</details>
