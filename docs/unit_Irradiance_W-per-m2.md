# Watt per square metre (W/m²)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Irradiance_W-per-m2</code></p>

> The SI coherent unit of irradiance (power per unit area).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Irradiance](unit_Irradiance.md) |
| [Local identifier](_lid.md) | `W-per-m2` |
| [Global identifier](_gid.md) | `unit_Irradiance_W-per-m2` |
| [Official identifiers](_aid.md) | `W-per-m2` · `W/m²` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "W-per-m2",
    "W\/m²"
  ],
  "_gid" : "unit_Irradiance_W-per-m2",
  "_lid" : "W-per-m2",
  "_name" : "Watt per square metre",
  "_nid" : "unit_Irradiance",
  "_symbol" : "\\mathrm{W\\,m^{-2}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Watt per square metre (W/m²)

**[Definition](_definition.md):** The SI coherent unit of irradiance (power per unit area).

**[Description](_description.md)**

Watt per square metre is the SI coherent unit for irradiance and the pivot for all irradiance-unit conversions in this dictionary. It expresses the rate of radiant energy incident on a surface per unit area.

In the EUFGIS GeoService, shortwave downwelling radiation and photosynthetically active radiation (PAR) from ERA5-Land are distributed in W/m². MODIS LAI/FPAR products relate to the fraction of absorbed PAR, itself defined in W/m².

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
    "ISO_639_3_eng" : "Watt per square metre (W\/m²)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M1H0T-3D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `W/m2` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M1H0T-3D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "W\/m2"
}
```

</details>
