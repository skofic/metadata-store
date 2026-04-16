# Kilogram of carbon per square metre per second (kgC/m²/s)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_CarbonFluxDensity_kgC-per-m2-per-s</code></p>

> The SI coherent unit of carbon mass flux density, dimensionally identical to kg/m²/s but annotated to specify that the mass is elemental carbon.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Carbon flux density](unit_CarbonFluxDensity.md) |
| [Local identifier](_lid.md) | `kgC-per-m2-per-s` |
| [Global identifier](_gid.md) | `unit_CarbonFluxDensity_kgC-per-m2-per-s` |
| [Official identifiers](_aid.md) | `kgC-per-m2-per-s` · `kgC/m²/s` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kgC-per-m2-per-s",
    "kgC\/m²\/s"
  ],
  "_gid" : "unit_CarbonFluxDensity_kgC-per-m2-per-s",
  "_lid" : "kgC-per-m2-per-s",
  "_name" : "Kilogram of carbon per square metre per second",
  "_nid" : "unit_CarbonFluxDensity",
  "_symbol" : "\\mathrm{kg_{C}\\,m^{-2}\\,s^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilogram of carbon per square metre per second (kgC/m²/s)

**[Definition](_definition.md):** The SI coherent unit of carbon mass flux density, dimensionally identical to kg/m²/s but annotated to specify that the mass is elemental carbon.

**[Description](_description.md)**

Carbon flux density expresses the rate at which elemental carbon is assimilated or released per unit land area. The 'C' annotation is essential for carbon accounting: it distinguishes carbon mass from total dry-matter mass or CO₂ mass, which differ by the carbon fraction and molecular mass ratio respectively.

This is the SI coherent form for carbon flux. MODIS GPP (MOD17A2H) is distributed in this unit (kgC/m²/8-day, convertible to kgC/m²/s for SI representation).

The SI_factor is 1.0 because the physical dimensions are identical to kg/m²/s; no numeric conversion is required.

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
    "ISO_639_3_eng" : "Kilogram of carbon per square metre per second (kgC\/m²\/s)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-2I0M1H0T-1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `kg/(m2.s)` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-2I0M1H0T-1D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "kg\/(m2.s)"
}
```

</details>
