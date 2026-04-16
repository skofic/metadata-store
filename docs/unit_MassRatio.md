# Mass ratio
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_MassRatio</code></p>

> Quantity kind for the ratio of one mass to another mass of the same unit.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `MassRatio` |
| [Global identifier](_gid.md) | `unit_MassRatio` |
| [Official identifiers](_aid.md) | `MassRatio` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "MassRatio"
  ],
  "_gid" : "unit_MassRatio",
  "_lid" : "MassRatio",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Mass ratio

**[Definition](_definition.md):** Quantity kind for the ratio of one mass to another mass of the same unit.

**[Description](_description.md)**

Mass ratio is a dimensionless quantity expressing one mass as a fraction of another. The SI coherent unit is the **kilogram per kilogram** ([`unit_MassRatio_kg-per-kg`](unit_MassRatio_kg-per-kg.md), numerically equal to 1).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless).

In the EUFGIS database, mass ratio units appear in canopy fuel moisture content — the mass of water per mass of dry leaf matter (g H₂O / g dry matter). This quantity is a key driver of wildfire ignition risk in the SurEau model; when the canopy moisture content falls below 0.66 g/g, flammability increases sharply.

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
    "ISO_639_3_eng" : "Mass ratio"
  }
}
```

</details>
