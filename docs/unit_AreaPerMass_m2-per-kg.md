# Square metre per kilogram (m²/kg)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_AreaPerMass_m2-per-kg</code></p>

> The SI coherent unit of specific area (area per unit mass).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Area per mass](unit_AreaPerMass.md) |
| [Local identifier](_lid.md) | `m2-per-kg` |
| [Global identifier](_gid.md) | `unit_AreaPerMass_m2-per-kg` |
| [Official identifiers](_aid.md) | `m2-per-kg` · `m²/kg` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "m2-per-kg",
    "m²\/kg"
  ],
  "_gid" : "unit_AreaPerMass_m2-per-kg",
  "_lid" : "m2-per-kg",
  "_name" : "Square metre per kilogram",
  "_nid" : "unit_AreaPerMass",
  "_symbol" : "\\mathrm{m^2\\,kg^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Square metre per kilogram (m²/kg)

**[Definition](_definition.md):** The SI coherent unit of specific area (area per unit mass).

**[Description](_description.md)**

Square metre per kilogram is the SI coherent unit for area per mass. In plant physiology, **specific leaf area (SLA)** — the ratio of leaf area to leaf dry mass — quantifies leaf economy and is a key functional trait. SLA is often reported in cm²/g, which equals m²/kg (the conversion is exact: 10⁻⁴ m² / 10⁻³ kg = 0.1 m²/kg per cm²/g, so 1 cm²/g = 0.1 m²/kg).

A related variable is the **Huber value** (sapwood cross-sectional area per leaf area), expressed in cm²/m² = 10⁻⁴ m²/m². This is a dimensionless area ratio, not an area-per-mass quantity, but it can be confused with SLA; the quantity kind ensures correct dimensioning.

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
    "ISO_639_3_eng" : "Square metre per kilogram (m²\/kg)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L2I0M-1H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `m2/kg` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L2I0M-1H0T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "m2\/kg"
}
```

</details>
