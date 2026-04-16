# Carbon flux density
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_CarbonFluxDensity</code></p>

> Quantity kind for the mass flow rate of carbon per unit area of land surface.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `CarbonFluxDensity` |
| [Global identifier](_gid.md) | `unit_CarbonFluxDensity` |
| [Official identifiers](_aid.md) | `CarbonFluxDensity` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "CarbonFluxDensity"
  ],
  "_gid" : "unit_CarbonFluxDensity",
  "_lid" : "CarbonFluxDensity",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Carbon flux density

**[Definition](_definition.md):** Quantity kind for the mass flow rate of carbon per unit area of land surface.

**[Description](_description.md)**

Carbon flux density is a specialisation of mass flux density where the transported substance is carbon (C). It has the same physical dimension as mass flux density. The SI coherent unit is the **kilogram of carbon per square metre per second** ([`unit_CarbonFluxDensity_kgC-per-m2-per-s`](unit_CarbonFluxDensity_kgC-per-m2-per-s.md)).

Dimensional analysis (QUDT): `A0E0L-2I0M1H0T-1D0`.

In the EUFGIS database, carbon flux density units appear in remote-sensing gross primary productivity (GPP) and net primary productivity (NPP) products from MODIS, CHELSA, and field models. The conventional ecological units are kg C/m²/day and kg C/m²/year. The 'C' suffix in unit labels marks the mass as carbon-specific, which is essential for correct interpretation in carbon accounting.

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
    "ISO_639_3_eng" : "Carbon flux density"
  }
}
```

</details>
