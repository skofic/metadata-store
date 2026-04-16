# Pressure
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Pressure</code></p>

> Quantity kind for force per unit area.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Pressure` |
| [Global identifier](_gid.md) | `unit_Pressure` |
| [Official identifiers](_aid.md) | `Pressure` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Pressure"
  ],
  "_gid" : "unit_Pressure",
  "_lid" : "Pressure",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Pressure

**[Definition](_definition.md):** Quantity kind for force per unit area.

**[Description](_description.md)**

Pressure is force applied perpendicular to a surface divided by the area of that surface. The SI coherent unit is the **pascal** ([`unit_Pressure_Pa`](unit_Pressure_Pa.md), equal to 1 N/m² = 1 kg·m⁻¹·s⁻²).

Dimensional analysis (QUDT): `A0E0L-1I0M1H0T-2D0`.

In the EUFGIS database, pressure units cover several distinct physical phenomena: plant water potential (turgor loss point, xylem embolism P50) in megapascals (MPa, negative values); atmospheric vapour pressure deficit (VPD) in kilopascals (kPa) or hectopascals (hPa); and atmospheric pressure in hectopascals. Negative water potential values indicate water stress — the more negative, the greater the tension in the xylem.

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
    "ISO_639_3_eng" : "Pressure"
  }
}
```

</details>
