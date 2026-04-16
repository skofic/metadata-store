# Degree (°)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_PlaneAngle_deg</code></p>

> Unit of plane angle equal to π/180 radians (approximately 0.017 453 rad).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Plane angle](unit_PlaneAngle.md) |
| [Local identifier](_lid.md) | `deg` |
| [Global identifier](_gid.md) | `unit_PlaneAngle_deg` |
| [Official identifiers](_aid.md) | `deg` · `°` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg",
    "°"
  ],
  "_gid" : "unit_PlaneAngle_deg",
  "_lid" : "deg",
  "_name" : "Degree",
  "_nid" : "unit_PlaneAngle",
  "_symbol" : "^\\circ"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Degree (°)

**[Definition](_definition.md):** Unit of plane angle equal to π/180 radians (approximately 0.017 453 rad).

**[Description](_description.md)**

The degree of arc is the conventional unit for expressing terrain slope and aspect in the EUFGIS characterisation database. Slope is reported in degrees from horizontal (0° = flat, 90° = vertical); aspect is reported as degrees clockwise from north (0°/360° = north, 90° = east). Geographic coordinates (latitude, longitude) are also expressed in decimal degrees.

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
    "ISO_639_3_eng" : "Degree (°)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 0.017453292519943 |
| [Multiplicative factor](SI_factor.md) | 0.017453292519943 |
| [UCUM unit code](UCUM_code.md) | `deg` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 0.017453292519943001,
  "SI_factor" : 0.017453292519943001,
  "UCUM_code" : "deg"
}
```

</details>
