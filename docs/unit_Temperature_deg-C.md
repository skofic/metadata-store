# Degree Celsius (°C)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Temperature_deg-C</code></p>

> Unit of temperature with the same scale interval as the kelvin but with its zero point at 273.15 K (0 °C = 273.15 K).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Thermodynamic temperature](unit_Temperature.md) |
| [Local identifier](_lid.md) | `deg-C` |
| [Global identifier](_gid.md) | `unit_Temperature_deg-C` |
| [Official identifiers](_aid.md) | `deg-C` · `°C` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg-C",
    "°C"
  ],
  "_gid" : "unit_Temperature_deg-C",
  "_lid" : "deg-C",
  "_name" : "Degree Celsius",
  "_nid" : "unit_Temperature",
  "_symbol" : "^\\circ\\mathrm{C}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Degree Celsius (°C)

**[Definition](_definition.md):** Unit of temperature with the same scale interval as the kelvin but with its zero point at 273.15 K (0 °C = 273.15 K).

**[Description](_description.md)**

The Celsius scale is the standard unit for reporting air temperature, soil temperature, and climate variables in applied ecology and forestry. Its interval is identical to the kelvin, so differences in Celsius equal differences in kelvin (ΔT in °C = ΔT in K).

Conversion to kelvin: K = °C + 273.15. The [`SI_factor`](SI_factor.md) is 1.0 and the [`SI_offset`](SI_offset.md) is 273.15, following the formula `SI_value = value × SI_factor + SI_offset`.

In the EUFGIS database, CHELSA and WorldClim temperature data (mean, min, max monthly temperatures; annual means) are published in degrees Celsius. ERA5-Land 2 m temperature is distributed in kelvin but displayed in Celsius.

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
    "ISO_639_3_eng" : "Degree Celsius (°C)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H1T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [QUDT conversion offset](QUDT_offset.md) | 273.15 |
| [Multiplicative factor](SI_factor.md) | 1 |
| [Additive offset](SI_offset.md) | 273.15 |
| [UCUM unit code](UCUM_code.md) | `Cel` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H1T0D0",
  "QUDT_multiplier" : 1,
  "QUDT_offset" : 273.14999999999998,
  "SI_factor" : 1,
  "SI_offset" : 273.14999999999998,
  "UCUM_code" : "Cel",
  "unit_range" : {
    "_min-inclusive" : -273.14999999999998
  }
}
```

</details>
