# Standard atmosphere (atm)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_atm</code></p>

> Unit of pressure equal to exactly 101 325 Pa, defined as the standard atmospheric pressure at sea level.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `atm` |
| [Global identifier](_gid.md) | `unit_Pressure_atm` |
| [Official identifiers](_aid.md) | `atm` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "atm"
  ],
  "_gid" : "unit_Pressure_atm",
  "_lid" : "atm",
  "_name" : "Standard atmosphere",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{atm}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Standard atmosphere (atm)

**[Definition](_definition.md):** Unit of pressure equal to exactly 101 325 Pa, defined as the standard atmospheric pressure at sea level.

**[Description](_description.md)**

The standard atmosphere is a defined constant used as a reference pressure in gas laws, altitude tables, and gas exchange calculations. It is not a unit commonly used for reporting measured values in the EUFGIS databases but is included as an interoperability reference.

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
    "ISO_639_3_eng" : "Standard atmosphere (atm)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 101325 |
| [Multiplicative factor](SI_factor.md) | 101325 |
| [UCUM unit code](UCUM_code.md) | `atm` |
| [Valid numeric range](_range_valid.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "_range_valid" : {
    "_min-inclusive" : 0
  },
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 101325,
  "SI_factor" : 101325,
  "UCUM_code" : "atm"
}
```

</details>
