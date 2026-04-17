# Per pascal (Pa⁻¹)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_HydraulicCapacitance_per-Pa</code></p>

> The SI coherent unit of hydraulic capacitance (fractional volume change per unit pressure change), dimensionally L·M⁻¹·T².

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Hydraulic capacitance](unit_HydraulicCapacitance.md) |
| [Local identifier](_lid.md) | `per-Pa` |
| [Global identifier](_gid.md) | `unit_HydraulicCapacitance_per-Pa` |
| [Official identifiers](_aid.md) | `per-Pa` · `Pa⁻¹` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "per-Pa",
    "Pa⁻¹"
  ],
  "_gid" : "unit_HydraulicCapacitance_per-Pa",
  "_lid" : "per-Pa",
  "_name" : "Per pascal",
  "_nid" : "unit_HydraulicCapacitance",
  "_symbol" : "\\mathrm{Pa^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Per pascal (Pa⁻¹)

**[Definition](_definition.md):** The SI coherent unit of hydraulic capacitance (fractional volume change per unit pressure change), dimensionally L·M⁻¹·T².

**[Description](_description.md)**

Pa⁻¹ is the SI coherent unit for hydraulic capacitance. It represents the fractional change in water content per unit change in pressure. In practice, plant hydraulic capacitance values in Pa⁻¹ are very small numbers (10⁻⁸ to 10⁻⁶ Pa⁻¹), which is why the %RWC/MPa convention is preferred in the literature.

Conversion: 1 Pa⁻¹ = 10⁸ %RWC/MPa.

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
    "ISO_639_3_eng" : "Per pascal (Pa⁻¹)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L1I0M-1H0T2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `/Pa` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L1I0M-1H0T2D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "\/Pa",
  "unit_range" : {
    "_min-inclusive" : 0
  }
}
```

</details>
