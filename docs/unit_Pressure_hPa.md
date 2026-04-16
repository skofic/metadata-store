# Hectopascal (hPa)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_hPa</code></p>

> Unit of pressure equal to 100 Pa, numerically identical to the millibar (mbar).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `hPa` |
| [Global identifier](_gid.md) | `unit_Pressure_hPa` |
| [Official identifiers](_aid.md) | `hPa` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "hPa"
  ],
  "_gid" : "unit_Pressure_hPa",
  "_lid" : "hPa",
  "_name" : "Hectopascal",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{hPa}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hectopascal (hPa)

**[Definition](_definition.md):** Unit of pressure equal to 100 Pa, numerically identical to the millibar (mbar).

**[Description](_description.md)**

The hectopascal is the standard meteorological unit for surface atmospheric pressure, numerically equal to the traditional millibar. ERA5-Land reports surface pressure at single or multiple atmospheric levels in hPa. Standard sea-level atmospheric pressure is 1 013.25 hPa.

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
    "ISO_639_3_eng" : "Hectopascal (hPa)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 100 |
| [Multiplicative factor](SI_factor.md) | 100 |
| [UCUM unit code](UCUM_code.md) | `hPa` |
| [Valid numeric range](_range_valid.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "_range_valid" : {
    "_min-inclusive" : 0
  },
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 100,
  "SI_factor" : 100,
  "UCUM_code" : "hPa"
}
```

</details>
