# Kilogram of carbon per square metre per day (kgC/m²/day)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_CarbonFluxDensity_kgC-per-m2-per-day</code></p>

> Unit of carbon flux density equal to 1/86 400 kgC/m²/s ≈ 1.157 × 10⁻⁵ kgC/m²/s.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Carbon flux density](unit_CarbonFluxDensity.md) |
| [Local identifier](_lid.md) | `kgC-per-m2-per-day` |
| [Global identifier](_gid.md) | `unit_CarbonFluxDensity_kgC-per-m2-per-day` |
| [Official identifiers](_aid.md) | `kgC-per-m2-per-day` · `kgC/m²/day` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kgC-per-m2-per-day",
    "kgC\/m²\/day"
  ],
  "_gid" : "unit_CarbonFluxDensity_kgC-per-m2-per-day",
  "_lid" : "kgC-per-m2-per-day",
  "_name" : "Kilogram of carbon per square metre per day",
  "_nid" : "unit_CarbonFluxDensity",
  "_symbol" : "\\mathrm{kg_{C}\\,m^{-2}\\,d^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilogram of carbon per square metre per day (kgC/m²/day)

**[Definition](_definition.md):** Unit of carbon flux density equal to 1/86 400 kgC/m²/s ≈ 1.157 × 10⁻⁵ kgC/m²/s.

**[Description](_description.md)**

Kilogram of carbon per square metre per day is the practical reporting unit for gross primary production (GPP) in MODIS products and ecosystem models. In the EUFGIS GeoService, MODIS GPP (MOD17A2H) data ingested from the GeoService database use this unit after conversion from the 8-day composite native resolution to a per-day rate.

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
    "ISO_639_3_eng" : "Kilogram of carbon per square metre per day (kgC\/m²\/day)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-2I0M1H0T-1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1.1574074074e-05 |
| [Multiplicative factor](SI_factor.md) | 1.1574074074e-05 |
| [UCUM unit code](UCUM_code.md) | `kg/(m2.d)` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-2I0M1H0T-1D0",
  "QUDT_multiplier" : 1.1574074074e-05,
  "SI_factor" : 1.1574074074e-05,
  "UCUM_code" : "kg\/(m2.d)"
}
```

</details>
