# Day (d)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration_day</code></p>

> Unit of time equal to 86 400 seconds.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Duration](unit_Duration.md) |
| [Local identifier](_lid.md) | `day` |
| [Global identifier](_gid.md) | `unit_Duration_day` |
| [Official identifiers](_aid.md) | `day` · `d` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "day",
    "d"
  ],
  "_gid" : "unit_Duration_day",
  "_lid" : "day",
  "_name" : "Day",
  "_nid" : "unit_Duration",
  "_symbol" : "\\mathrm{d}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Day (d)

**[Definition](_definition.md):** Unit of time equal to 86 400 seconds.

**[Description](_description.md)**

The day is the standard temporal unit for daily climate aggregates (daily mean temperature, daily precipitation sum, daily radiation totals). Carbon flux (GPP) is commonly reported per day (kgC/m²/day). Growing degree-day accumulation is computed over calendar days. The European Drought Observatory reports drought indices at daily resolution.

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
    "ISO_639_3_eng" : "Day (d)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 86400 |
| [Multiplicative factor](SI_factor.md) | 86400 |
| [UCUM unit code](UCUM_code.md) | `d` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T1D0",
  "QUDT_multiplier" : 86400,
  "SI_factor" : 86400,
  "UCUM_code" : "d"
}
```

</details>
