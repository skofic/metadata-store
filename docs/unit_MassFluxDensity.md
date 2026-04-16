# Mass flux density
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_MassFluxDensity</code></p>

> Quantity kind for the mass flow rate per unit area of a surface.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `MassFluxDensity` |
| [Global identifier](_gid.md) | `unit_MassFluxDensity` |
| [Official identifiers](_aid.md) | `MassFluxDensity` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "MassFluxDensity"
  ],
  "_gid" : "unit_MassFluxDensity",
  "_lid" : "MassFluxDensity",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Mass flux density

**[Definition](_definition.md):** Quantity kind for the mass flow rate per unit area of a surface.

**[Description](_description.md)**

Mass flux density is the rate at which mass passes through a unit area per unit time. The SI coherent unit is the **kilogram per square metre per second** ([`unit_MassFluxDensity_kg-per-m2-per-s`](unit_MassFluxDensity_kg-per-m2-per-s.md), equal to kg·m⁻²·s⁻¹).

Dimensional analysis (QUDT): `A0E0L-2I0M1H0T-1D0`.

In the EUFGIS database, mass flux density units express rates of material deposition or exchange over land surface: precipitation rate (kg/m²/s in ERA5, equivalent to mm/s of water depth), evapotranspiration, and biomass accumulation rates. For ecological reporting, the practical units are kg/m²/day and g/m²/day.

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
    "ISO_639_3_eng" : "Mass flux density"
  }
}
```

</details>
