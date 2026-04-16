# Bar (bar)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_bar</code></p>

> Unit of pressure equal to 10⁵ Pa.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `bar` |
| [Global identifier](_gid.md) | `unit_Pressure_bar` |
| [Official identifiers](_aid.md) | `bar` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "bar"
  ],
  "_gid" : "unit_Pressure_bar",
  "_lid" : "bar",
  "_name" : "Bar",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{bar}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Bar (bar)

**[Definition](_definition.md):** Unit of pressure equal to 10⁵ Pa.

**[Description](_description.md)**

The bar is a non-SI unit widely used in meteorology, oceanography, and engineering. Standard atmospheric pressure is approximately 1.013 25 bar. The millibar (mbar = 0.1 kPa = 1 hPa) is numerically identical to the hectopascal and appears in older meteorological records.

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
    "ISO_639_3_eng" : "Bar (bar)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 100000 |
| [Multiplicative factor](SI_factor.md) | 100000 |
| [UCUM unit code](UCUM_code.md) | `bar` |
| [Valid numeric range](_range_valid.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "_range_valid" : {
    "_min-inclusive" : 0
  },
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 100000,
  "SI_factor" : 100000,
  "UCUM_code" : "bar"
}
```

</details>
