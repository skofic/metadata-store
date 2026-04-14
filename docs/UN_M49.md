# UN M.49 geographic regions
<p style="color: #888; margin-top: -0.5em;"><code>UN_M49</code></p>

> Namespace for United Nations Statistics Division M.49 geographic region and sub-region identifiers used for statistical reporting.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `UN` |
| [Local identifier](_lid.md) | `M49` |
| [Global identifier](_gid.md) | `UN_M49` |
| [Official identifiers](_aid.md) | `M49` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "UN",
  "_lid": "M49",
  "_gid": "UN_M49",
  "_aid": [
    "M49"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** UN M.49 geographic regions

**[Definition](_definition.md):** Namespace for United Nations Statistics Division M.49 geographic region and sub-region identifiers used for statistical reporting.

**[Description](_description.md)**

The United Nations M.49 standard defines a hierarchy of geographic regions used by the UN Statistics Division for statistical purposes. At the top level are macro-regions (continental groupings such as Africa, Asia, Europe). Each macro-region is subdivided into sub-regions (e.g. Northern Africa, Eastern Asia). Countries and territories are assigned to exactly one sub-region and thereby to one macro-region.

This namespace holds the macro-region and sub-region terms. The descriptor properties [`UN_Macro-region`](UN_Macro-region.md) and [`UN_Sub-region`](UN_Sub-region.md) reference these enumeration roots.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "UN M.49 geographic regions"
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
