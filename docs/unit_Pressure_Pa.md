# Pascal (Pa)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure_Pa</code></p>

> The SI coherent unit of pressure (force per unit area), equal to one newton per square metre (N/m²).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Pressure](unit_Pressure.md) |
| [Local identifier](_lid.md) | `Pa` |
| [Global identifier](_gid.md) | `unit_Pressure_Pa` |
| [Official identifiers](_aid.md) | `Pa` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Pa"
  ],
  "_gid" : "unit_Pressure_Pa",
  "_lid" : "Pa",
  "_name" : "Pascal",
  "_nid" : "unit_Pressure",
  "_symbol" : "\\mathrm{Pa}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Pascal (Pa)

**[Definition](_definition.md):** The SI coherent unit of pressure (force per unit area), equal to one newton per square metre (N/m²).

**[Description](_description.md)**

The pascal is the SI coherent unit for pressure and the pivot for all pressure-unit conversions in this dictionary. In plant hydraulics, turgor loss point (TLP) and P50 (xylem pressure at 50 % loss of hydraulic conductivity) are measured in megapascals (MPa). Atmospheric pressure is approximately 101 325 Pa. Vapour pressure deficit (VPD) is expressed in pascals or kilopascals.

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
    "ISO_639_3_eng" : "Pascal (Pa)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-1I0M1H0T-2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `Pa` |
| [Unit physical range](unit_range.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-1I0M1H0T-2D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "Pa",
  "unit_range" : {
    "_min-inclusive" : 0
  }
}
```

</details>
