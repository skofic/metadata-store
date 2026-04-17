# Megapascal (MPa)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_MPa</code></p>

> Unit of pressure equal to 10⁶ Pa.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `MPa` |
| [Global identifier](_gid.md) | `unit_Pressure_MPa` |
| [Official identifiers](_aid.md) | `MPa` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "MPa"
  ],
  "_gid" : "unit_Pressure_MPa",
  "_lid" : "MPa",
  "_name" : "Megapascal",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{MPa}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Megapascal (MPa)

**[Definition](_definition.md):** Unit of pressure equal to 10⁶ Pa.

**[Description](_description.md)**

The megapascal is the standard unit for plant water potential, xylem hydraulic stress, and turgor loss point in plant physiology. In the EUFGIS phenotypic characterisation dataset, turgor loss point (TLP) and P50 are recorded in MPa. Hydraulic capacitance is expressed as %RWC per MPa, where MPa is the denominator pressure unit.

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
    "ISO_639_3_eng" : "Megapascal (MPa)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1000000 |
| [Multiplicative factor](SI_factor.md) | 1000000 |
| [UCUM unit code](UCUM_code.md) | `MPa` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 1000000,
  "SI_factor" : 1000000,
  "UCUM_code" : "MPa",
  "unit_range" : {
    "_min-inclusive" : 0
  }
}
```

</details>
