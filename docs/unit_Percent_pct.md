# Percent (%)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Percent_pct</code></p>

> A dimensionless unit equal to one hundredth (0.01); a value of 1 % equals 0.01 in SI.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Percent](unit_Percent.md) |
| [Local identifier](_lid.md) | `pct` |
| [Global identifier](_gid.md) | `unit_Percent_pct` |
| [Official identifiers](_aid.md) | `pct` · `%` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "pct",
    "%"
  ],
  "_gid" : "unit_Percent_pct",
  "_lid" : "pct",
  "_name" : "Percent",
  "_nid" : "unit_Percent",
  "_symbol" : "\\%"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Percent (%)

**[Definition](_definition.md):** A dimensionless unit equal to one hundredth (0.01); a value of 1 % equals 0.01 in SI.

**[Description](_description.md)**

Percent is the conventional unit for quantities that are naturally expressed as a proportion of 100. It differs from the pure dimensionless unit [`unit_Dimensionless_1`](unit_Dimensionless_1.md) in its scale convention: data stored in percent (0–100 %) must be multiplied by 0.01 to obtain the SI dimensionless value (0.0–1.0).

In the EUFGIS database, percent is used for:

- **Relative humidity** (ERA5-Land, 0–100 %)
- **Cloud cover** (MODIS cloud fraction, 0–100 %)
- **Desiccation risk** (modelled PLC — percent loss of hydraulic conductivity, 0–100 %)
- **Relative water content (RWC)** — numerator in hydraulic capacitance (%RWC/MPa)
- **Proportion of polymorphic loci** (genetic variable, 0–100 %)

Conversion: SI_value = value × 0.01. SI_factor = 0.01.

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
    "ISO_639_3_eng" : "Percent (%)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 0.01 |
| [Multiplicative factor](SI_factor.md) | 0.01 |
| [UCUM unit code](UCUM_code.md) | `%` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 0.01,
  "SI_factor" : 0.01,
  "UCUM_code" : "%",
  "unit_range" : {
    "_max-inclusive" : 100,
    "_min-inclusive" : 0
  }
}
```

</details>
