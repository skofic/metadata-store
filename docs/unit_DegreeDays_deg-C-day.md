# Degree Celsius day (°C·day)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_DegreeDays_deg-C-day</code></p>

> The SI coherent unit of thermal time (temperature integrated over duration), with the practical convention that temperature is expressed in Celsius degrees and duration in days. Dimensionally K·s in SI; 1 °C·day = 86 400 K·s.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Degree-days](unit_DegreeDays.md) |
| [Local identifier](_lid.md) | `deg-C-day` |
| [Global identifier](_gid.md) | `unit_DegreeDays_deg-C-day` |
| [Official identifiers](_aid.md) | `deg-C-day` · `°C·day` · `GDD` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg-C-day",
    "°C·day",
    "GDD"
  ],
  "_gid" : "unit_DegreeDays_deg-C-day",
  "_lid" : "deg-C-day",
  "_name" : "Degree Celsius day",
  "_nid" : "unit_DegreeDays",
  "_symbol" : "^\\circ\\mathrm{C}\\cdot\\mathrm{d}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Degree Celsius day (°C·day)

**[Definition](_definition.md):** The SI coherent unit of thermal time (temperature integrated over duration), with the practical convention that temperature is expressed in Celsius degrees and duration in days. Dimensionally K·s in SI; 1 °C·day = 86 400 K·s.

**[Description](_description.md)**

Degree-days accumulate temperature above a base threshold over time and are the standard unit for **growing degree days (GDD)** and **chilling units** in phenological models.

Definition: 1 °C·day = (mean temperature − base temperature) × 1 day, summed over the growing season. Common base temperatures are 0 °C (GDD0), 5 °C (GDD5), and 10 °C (GDD10). CHELSA bioclimatic variables include annual GDD0, GDD5, and GDD10 derived from daily mean temperatures, all expressed in °C·day.

Conversion to SI: 1 °C·day = 1 K × 86 400 s = 86 400 K·s.

**Note:** Because the Celsius and Kelvin scales have the same interval size, degree-day calculations with Celsius temperatures give numerically identical results to those using kelvin — only the base temperature offset differs. The SI_factor converts °C·day to K·s by multiplying by 86 400.

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
    "ISO_639_3_eng" : "Degree Celsius day (°C·day)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H1T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 86400 |
| [Multiplicative factor](SI_factor.md) | 86400 |
| [UCUM unit code](UCUM_code.md) | `Cel.d` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H1T1D0",
  "QUDT_multiplier" : 86400,
  "SI_factor" : 86400,
  "UCUM_code" : "Cel.d"
}
```

</details>
