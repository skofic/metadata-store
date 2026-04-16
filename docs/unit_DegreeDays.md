# Degree-days
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_DegreeDays</code></p>

> Quantity kind for the product of temperature difference and duration, used in phenological and climate modelling.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `DegreeDays` |
| [Global identifier](_gid.md) | `unit_DegreeDays` |
| [Official identifiers](_aid.md) | `DegreeDays` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "DegreeDays"
  ],
  "_gid" : "unit_DegreeDays",
  "_lid" : "DegreeDays",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Degree-days

**[Definition](_definition.md):** Quantity kind for the product of temperature difference and duration, used in phenological and climate modelling.

**[Description](_description.md)**

Degree-days accumulate the temperature excess (or deficit) above a baseline threshold over time. They are used to model biological development rates that depend on thermal energy rather than elapsed time. The physical SI coherent unit is the **kelvin-second** (K·s), but that unit is not represented in this dictionary. The conventional ecological unit is the **degree-Celsius-day** ([`unit_DegreeDays_deg-C-day`](unit_DegreeDays_deg-C-day.md)), equal to 86 400 K·s.

Dimensional analysis (QUDT): `A0E0L0I0M0H1T1D0`.

In the EUFGIS database, growing degree-days (GDD) appear in CHELSA bioclimatic variables: GDD0 (base 0 °C), GDD5 (base 5 °C), and GDD10 (base 10 °C). Each counts the cumulative daily temperature excess above the baseline for the growing season, providing a thermal time index for phenological modelling.

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
    "ISO_639_3_eng" : "Degree-days"
  }
}
```

</details>
