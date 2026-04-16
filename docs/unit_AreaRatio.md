# Area ratio
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_AreaRatio</code></p>

> Quantity kind for the ratio of one area to another area of the same unit.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `AreaRatio` |
| [Global identifier](_gid.md) | `unit_AreaRatio` |
| [Official identifiers](_aid.md) | `AreaRatio` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "AreaRatio"
  ],
  "_gid" : "unit_AreaRatio",
  "_lid" : "AreaRatio",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Area ratio

**[Definition](_definition.md):** Quantity kind for the ratio of one area to another area of the same unit.

**[Description](_description.md)**

Area ratio is a dimensionless quantity that expresses one area as a fraction of another. The SI coherent unit is the **square metre per square metre** ([`unit_AreaRatio_m2-per-m2`](unit_AreaRatio_m2-per-m2.md), numerically equal to 1).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless).

In the EUFGIS database, area ratio units appear in: leaf area index (LAI, m²/m² — one-sided leaf area per unit ground area), plant area index (PAI, m² of plant per m² of soil), and the Huber value (sapwood cross-sectional area per subtended leaf area, expressed in cm²/m²). The area ratio is distinguished from a plain dimensionless ratio because its physical interpretation — two commensurate areas — is meaningful for ecological modelling.

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
    "ISO_639_3_eng" : "Area ratio"
  }
}
```

</details>
