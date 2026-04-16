# Second (s)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration_s</code></p>

> The SI base unit of time.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Duration](unit_Duration.md) |
| [Local identifier](_lid.md) | `s` |
| [Global identifier](_gid.md) | `unit_Duration_s` |
| [Official identifiers](_aid.md) | `s` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "s"
  ],
  "_gid" : "unit_Duration_s",
  "_lid" : "s",
  "_name" : "Second",
  "_nid" : "unit_Duration",
  "_symbol" : "\\mathrm{s}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Second (s)

**[Definition](_definition.md):** The SI base unit of time.

**[Description](_description.md)**

The second is defined by fixing the numerical value of the caesium-133 hyperfine transition frequency to exactly 9 192 631 770 Hz. It is the SI coherent unit for duration and the pivot for all time-unit conversions in this dictionary.

The second appears as the denominator in flux and rate expressions throughout the EUFGIS database: carbon flux (kgC/m²/s), stomatal conductance (mol/m²/s), wind speed (m/s), and photosynthetically active radiation (W/m²).

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
    "ISO_639_3_eng" : "Second (s)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T1D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `s` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T1D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "s"
}
```

</details>
