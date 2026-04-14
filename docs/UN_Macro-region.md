# United Nations Macro-region
<p style="color: #888; margin-top: -0.5em;"><code>UN_Macro-region</code></p>

> The United Nations M.49 macro-region (continental grouping) in which a country or territory is located.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `UN` |
| [Local identifier](_lid.md) | `Macro-region` |
| [Global identifier](_gid.md) | `UN_Macro-region` |
| [Official identifiers](_aid.md) | `Macro-region` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "UN",
  "_lid": "Macro-region",
  "_gid": "UN_Macro-region",
  "_aid": [
    "Macro-region"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** United Nations Macro-region

**[Definition](_definition.md):** The United Nations M.49 macro-region (continental grouping) in which a country or territory is located.

**[Description](_description.md)**

The UN Statistics Division M.49 standard organises the world into macro-regions — broad continental groupings used for statistical reporting. The six macro-regions are Africa, Americas, Asia, Europe, Oceania, and Antarctic. Each country and territory belongs to exactly one macro-region.

This term serves both as a descriptor (recording the macro-region of a country record) and as the enumeration root for the set of valid macro-region values in the [`UN_M49`](UN_M49.md) namespace.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "United Nations Macro-region"
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

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) from vocabulary `UN_Macro-region`

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_enum": {
      "_enums": "UN_Macro-region"
    }
  }
}
```

</details>
