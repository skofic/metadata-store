# Hour (h)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration_h</code></p>

> Unit of time equal to 3 600 seconds.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Duration](unit_Duration.md) |
| [Local identifier](_lid.md) | `h` |
| [Global identifier](_gid.md) | `unit_Duration_h` |
| [Official identifiers](_aid.md) | `h` · `hr` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "h",
    "hr"
  ],
  "_gid" : "unit_Duration_h",
  "_lid" : "h",
  "_name" : "Hour",
  "_nid" : "unit_Duration",
  "_symbol" : "\\mathrm{h}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hour (h)

**[Definition](_definition.md):** Unit of time equal to 3 600 seconds.

**[Description](_description.md)**

The hour is the standard temporal resolution for sub-daily climate data. ERA5-Land Hourly provides variables at hourly resolution, and solar radiation datasets are commonly aggregated to hourly means. Evapotranspiration is sometimes expressed per hour.

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
    "ISO_639_3_eng" : "Hour (h)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 3600 |
| [Multiplicative factor](SI_factor.md) | 3600 |
| [UCUM unit code](UCUM_code.md) | `h` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T1D0",
  "QUDT_multiplier" : 3600,
  "SI_factor" : 3600,
  "UCUM_code" : "h"
}
```

</details>
