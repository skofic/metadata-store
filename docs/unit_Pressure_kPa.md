# Kilopascal (kPa)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_kPa</code></p>

> Unit of pressure equal to 1 000 Pa.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `kPa` |
| [Global identifier](_gid.md) | `unit_Pressure_kPa` |
| [Official identifiers](_aid.md) | `kPa` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kPa"
  ],
  "_gid" : "unit_Pressure_kPa",
  "_lid" : "kPa",
  "_name" : "Kilopascal",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{kPa}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilopascal (kPa)

**[Definition](_definition.md):** Unit of pressure equal to 1 000 Pa.

**[Description](_description.md)**

The kilopascal is used for vapour pressure deficit (VPD), soil water potential, and atmospheric pressure in meteorological applications. ERA5-Land surface pressure and dewpoint data are sometimes derived in kilopascals.

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
    "ISO_639_3_eng" : "Kilopascal (kPa)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1000 |
| [Multiplicative factor](SI_factor.md) | 1000 |
| [UCUM unit code](UCUM_code.md) | `kPa` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 1000,
  "SI_factor" : 1000,
  "UCUM_code" : "kPa",
  "unit_range" : {
    "_min-inclusive" : 0
  }
}
```

</details>
