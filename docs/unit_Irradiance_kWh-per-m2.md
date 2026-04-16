# Kilowatt-hour per square metre (kWh/m²)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Irradiance_kWh-per-m2</code></p>

> Unit of irradiation (energy per unit area) equal to 3 600 000 J/m² = 3 600 W·s/m².

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Irradiance](unit_Irradiance.md) |
| [Local identifier](_lid.md) | `kWh-per-m2` |
| [Global identifier](_gid.md) | `unit_Irradiance_kWh-per-m2` |
| [Official identifiers](_aid.md) | `kWh-per-m2` · `kWh/m²` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kWh-per-m2",
    "kWh\/m²"
  ],
  "_gid" : "unit_Irradiance_kWh-per-m2",
  "_lid" : "kWh-per-m2",
  "_name" : "Kilowatt-hour per square metre",
  "_nid" : "unit_Irradiance",
  "_symbol" : "\\mathrm{kWh\\,m^{-2}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilowatt-hour per square metre (kWh/m²)

**[Definition](_definition.md):** Unit of irradiation (energy per unit area) equal to 3 600 000 J/m² = 3 600 W·s/m².

**[Description](_description.md)**

Kilowatt-hour per square metre is the conventional unit for cumulative solar irradiation in solar energy applications and some climate datasets. When expressed as kWh/m²/day, it describes the daily irradiation total.

As an energy-per-area unit (not a power unit), this term represents an accumulated irradiation, not an instantaneous irradiance rate. The SI_factor converts to W/m² under the assumption of a one-day (86 400 s) accumulation period only when used as a daily irradiation unit. For cumulative use, context determines the time base.

Conversion (as energy/area): 1 kWh/m² = 3 600 000 J/m². As a daily rate: 1 kWh/m²/day = 3 600 000 / 86 400 W/m² = 41.667 W/m².

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
    "ISO_639_3_eng" : "Kilowatt-hour per square metre (kWh\/m²)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M1H0T-3D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 3600000 |
| [Multiplicative factor](SI_factor.md) | 41.666666666667 |
| [UCUM unit code](UCUM_code.md) | `kWh/m2` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M1H0T-3D0",
  "QUDT_multiplier" : 3600000,
  "SI_factor" : 41.666666666666998,
  "UCUM_code" : "kWh\/m2"
}
```

</details>
