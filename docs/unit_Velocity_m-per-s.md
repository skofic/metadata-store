# Metre per second (m/s)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Velocity_m-per-s</code></p>

> The SI coherent unit of velocity (distance per unit time).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Velocity](unit_Velocity.md) |
| [Local identifier](_lid.md) | `m-per-s` |
| [Global identifier](_gid.md) | `unit_Velocity_m-per-s` |
| [Official identifiers](_aid.md) | `m-per-s` · `m/s` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "m-per-s",
    "m\/s"
  ],
  "_gid" : "unit_Velocity_m-per-s",
  "_lid" : "m-per-s",
  "_name" : "Metre per second",
  "_nid" : "unit_Velocity",
  "_symbol" : "\\mathrm{m\\,s^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Metre per second (m/s)

**[Definition](_definition.md):** The SI coherent unit of velocity (distance per unit time).

**[Description](_description.md)**

Metre per second is the SI coherent unit for velocity and the pivot for all velocity-unit conversions in this dictionary. In the EUFGIS GeoService, ERA5-Land provides 10 m wind speed in m/s. Mean wind speed is also used as an explanatory variable in evapotranspiration calculations.

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
    "ISO_639_3_eng" : "Metre per second (m\/s)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L1I0M0H0T-1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `m/s` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L1I0M0H0T-1D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "m\/s"
}
```

</details>
