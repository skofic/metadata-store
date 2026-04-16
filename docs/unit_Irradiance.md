# Irradiance
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Irradiance</code></p>

> Quantity kind for radiant power received per unit area of a surface.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Irradiance` |
| [Global identifier](_gid.md) | `unit_Irradiance` |
| [Official identifiers](_aid.md) | `Irradiance` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Irradiance"
  ],
  "_gid" : "unit_Irradiance",
  "_lid" : "Irradiance",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Irradiance

**[Definition](_definition.md):** Quantity kind for radiant power received per unit area of a surface.

**[Description](_description.md)**

Irradiance is the power of electromagnetic radiation incident on a unit area. The SI coherent unit is the **watt per square metre** ([`unit_Irradiance_W-per-m2`](unit_Irradiance_W-per-m2.md), equal to kg·s⁻³).

Dimensional analysis (QUDT): `A0E0L0I0M1H0T-3D0`.

In the EUFGIS database, irradiance units cover: downwelling shortwave solar radiation (`rsds`) from ERA5 and CHELSA in W/m²; solar radiation from WorldClim in kJ/m²/day; and surface latent heat flux (`slhf`) from ERA5 in W/m². The kilowatt-hour per square metre (kWh/m²) is included for energy-sector interoperability.

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
    "ISO_639_3_eng" : "Irradiance"
  }
}
```

</details>
