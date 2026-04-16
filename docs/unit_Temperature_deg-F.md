# Degree Fahrenheit (°F)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Temperature_deg-F</code></p>

> Unit of temperature with the zero point at 255.372 2 K, and scale interval equal to 5/9 of a kelvin.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Thermodynamic temperature](unit_Temperature.md) |
| [Local identifier](_lid.md) | `deg-F` |
| [Global identifier](_gid.md) | `unit_Temperature_deg-F` |
| [Official identifiers](_aid.md) | `deg-F` · `°F` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg-F",
    "°F"
  ],
  "_gid" : "unit_Temperature_deg-F",
  "_lid" : "deg-F",
  "_name" : "Degree Fahrenheit",
  "_nid" : "unit_Temperature",
  "_symbol" : "^\\circ\\mathrm{F}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Degree Fahrenheit (°F)

**[Definition](_definition.md):** Unit of temperature with the zero point at 255.372 2 K, and scale interval equal to 5/9 of a kelvin.

**[Description](_description.md)**

The Fahrenheit scale is used in the United States and a few other countries. Its relationship to kelvin is: K = (°F + 459.67) × 5/9, which can be expressed in the standard two-parameter formula as `SI_value = value × (5/9) + 255.372 2`.

Conversion factor: SI_factor = 5/9 ≈ 0.555 556. SI_offset = 255.372 2 K (= 459.67 × 5/9).

Included for interoperability with datasets and instruments that report temperature in Fahrenheit.

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
    "ISO_639_3_eng" : "Degree Fahrenheit (°F)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H1T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 0.55555555555556 |
| [QUDT conversion offset](QUDT_offset.md) | 255.37222222222 |
| [Multiplicative factor](SI_factor.md) | 0.55555555555556 |
| [Additive offset](SI_offset.md) | 255.37222222222 |
| [UCUM unit code](UCUM_code.md) | `[degF]` |
| [Valid numeric range](_range_valid.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "_range_valid" : {
    "_min-inclusive" : -459.67000000000002
  },
  "QUDT_dimension_vector" : "A0E0L0I0M0H1T0D0",
  "QUDT_multiplier" : 0.55555555555556002,
  "QUDT_offset" : 255.37222222221999,
  "SI_factor" : 0.55555555555556002,
  "SI_offset" : 255.37222222221999,
  "UCUM_code" : "[degF]"
}
```

</details>
