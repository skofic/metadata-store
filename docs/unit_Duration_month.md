# Month — mean calendar month (mo)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration_month</code></p>

> Conventional unit of time equal to the mean calendar month, taken as 30.436 875 days (1/12 of a 365.2425-day Gregorian year, equal to 2 629 746 seconds).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Duration](unit_Duration.md) |
| [Local identifier](_lid.md) | `month` |
| [Global identifier](_gid.md) | `unit_Duration_month` |
| [Official identifiers](_aid.md) | `month` · `mo` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "month",
    "mo"
  ],
  "_gid" : "unit_Duration_month",
  "_lid" : "month",
  "_name" : "Month (mean)",
  "_nid" : "unit_Duration",
  "_symbol" : "\\mathrm{mo}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Month — mean calendar month (mo)

**[Definition](_definition.md):** Conventional unit of time equal to the mean calendar month, taken as 30.436 875 days (1/12 of a 365.2425-day Gregorian year, equal to 2 629 746 seconds).

**[Description](_description.md)**

Monthly aggregation is the standard temporal resolution for climate normals (monthly mean temperature, monthly precipitation sum). CHELSA and WorldClim bioclimatic variables are derived from monthly data. Because calendar months vary in length (28–31 days), a conventional mean month duration of 365.2425/12 days is used for unit conversion purposes.

**Note:** when a specific calendar month is intended (January, July, etc.), the data field should carry the month identifier rather than expressing duration in months. The month unit is for reporting rates and accumulations normalised to a monthly interval.

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
    "ISO_639_3_eng" : "Month — mean calendar month (mo)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 2629746 |
| [Multiplicative factor](SI_factor.md) | 2629746 |
| [UCUM unit code](UCUM_code.md) | `mo` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T1D0",
  "QUDT_multiplier" : 2629746,
  "SI_factor" : 2629746,
  "UCUM_code" : "mo"
}
```

</details>
