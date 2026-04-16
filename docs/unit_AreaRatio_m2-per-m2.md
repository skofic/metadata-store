# Square metre per square metre (m²/m²)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_AreaRatio_m2-per-m2</code></p>

> The SI coherent (and only) unit for area ratio, a dimensionless quantity retaining explicit area notation for semantic clarity.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Area ratio](unit_AreaRatio.md) |
| [Local identifier](_lid.md) | `m2-per-m2` |
| [Global identifier](_gid.md) | `unit_AreaRatio_m2-per-m2` |
| [Official identifiers](_aid.md) | `m2-per-m2` · `m²/m²` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "m2-per-m2",
    "m²\/m²"
  ],
  "_gid" : "unit_AreaRatio_m2-per-m2",
  "_lid" : "m2-per-m2",
  "_name" : "Square metre per square metre",
  "_nid" : "unit_AreaRatio",
  "_symbol" : "\\mathrm{m^2\\,m^{-2}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Square metre per square metre (m²/m²)

**[Definition](_definition.md):** The SI coherent (and only) unit for area ratio, a dimensionless quantity retaining explicit area notation for semantic clarity.

**[Description](_description.md)**

Although dimensionally equivalent to a pure number, m²/m² is the conventional notation for area-based ratios in vegetation science. The most important application is **Leaf Area Index (LAI)**: the ratio of total one-sided green leaf area to the ground area beneath the canopy. LAI is the primary variable in MODIS LAI products (MOD15A2H) ingested by the EUFGIS GeoService, with typical forest values between 1 and 8 m²/m².

The explicit m²/m² notation distinguishes area ratios from pure fractions or percentages, preventing ambiguity in data processing pipelines.

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
    "ISO_639_3_eng" : "Square metre per square metre (m²\/m²)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `m2/m2` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "m2\/m2"
}
```

</details>
