# Year — mean Gregorian year (a)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration_year</code></p>

> Conventional unit of time equal to the mean Gregorian calendar year: 365.2425 days (31 556 952 seconds).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Duration](unit_Duration.md) |
| [Local identifier](_lid.md) | `year` |
| [Global identifier](_gid.md) | `unit_Duration_year` |
| [Official identifiers](_aid.md) | `year` · `yr` · `a` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "year",
    "yr",
    "a"
  ],
  "_gid" : "unit_Duration_year",
  "_lid" : "year",
  "_name" : "Year (Gregorian mean)",
  "_nid" : "unit_Duration",
  "_symbol" : "\\mathrm{a}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Year — mean Gregorian year (a)

**[Definition](_definition.md):** Conventional unit of time equal to the mean Gregorian calendar year: 365.2425 days (31 556 952 seconds).

**[Description](_description.md)**

The mean Gregorian year is 365.2425 days (accounting for leap years in the Gregorian calendar). It is the standard temporal unit for annual climate aggregates, inter-annual trend rates, and long-term carbon flux budgets (kgC/m²/year or tC/ha/year).

In the EUFGIS context, annual values appear in temperature trend rates (°C/year from CHELSA temporal trends), annual precipitation sums, and annual mean NDVI. Tree ring width data and dendrological records use years as the time base.

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
    "ISO_639_3_eng" : "Year — mean Gregorian year (a)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 31556952 |
| [Multiplicative factor](SI_factor.md) | 31556952 |
| [UCUM unit code](UCUM_code.md) | `a` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T1D0",
  "QUDT_multiplier" : 31556952,
  "SI_factor" : 31556952,
  "UCUM_code" : "a"
}
```

</details>
