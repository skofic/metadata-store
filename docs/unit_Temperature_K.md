# Kelvin (K)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Temperature_K</code></p>

> The SI base unit of thermodynamic temperature.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Thermodynamic temperature](unit_Temperature.md) |
| [Local identifier](_lid.md) | `K` |
| [Global identifier](_gid.md) | `unit_Temperature_K` |
| [Official identifiers](_aid.md) | `K` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "K"
  ],
  "_gid" : "unit_Temperature_K",
  "_lid" : "K",
  "_name" : "Kelvin",
  "_nid" : "unit_Temperature",
  "_symbol" : "\\mathrm{K}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kelvin (K)

**[Definition](_definition.md):** The SI base unit of thermodynamic temperature.

**[Description](_description.md)**

The kelvin is defined by fixing the numerical value of the Boltzmann constant to exactly 1.380 649 × 10⁻²³ J/K. It is the SI coherent unit for thermodynamic temperature and uses an absolute zero reference point (0 K = −273.15 °C).

In the EUFGIS GeoService, land surface temperature (LST) from MODIS is distributed in kelvin, and CHELSA temperature variables are stored internally in kelvin before conversion to Celsius for display. The kelvin is the pivot unit for all temperature conversions in this dictionary.

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
    "ISO_639_3_eng" : "Kelvin (K)"
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
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [Additive offset](SI_offset.md) | 0 |
| [UCUM unit code](UCUM_code.md) | `K` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H1T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "SI_offset" : 0,
  "UCUM_code" : "K",
  "unit_range" : {
    "_min-inclusive" : 0
  }
}
```

</details>
