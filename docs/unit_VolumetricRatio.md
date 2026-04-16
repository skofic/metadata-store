# Volumetric ratio
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_VolumetricRatio</code></p>

> Quantity kind for the ratio of one volume to another volume of the same unit.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `VolumetricRatio` |
| [Global identifier](_gid.md) | `unit_VolumetricRatio` |
| [Official identifiers](_aid.md) | `VolumetricRatio` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "VolumetricRatio"
  ],
  "_gid" : "unit_VolumetricRatio",
  "_lid" : "VolumetricRatio",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Volumetric ratio

**[Definition](_definition.md):** Quantity kind for the ratio of one volume to another volume of the same unit.

**[Description](_description.md)**

Volumetric ratio is a dimensionless quantity expressing one volume as a fraction of another. The SI coherent unit is the **cubic metre per cubic metre** ([`unit_VolumetricRatio_m3-per-m3`](unit_VolumetricRatio_m3-per-m3.md), numerically equal to 1).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless).

In the EUFGIS database, volumetric ratio units appear in soil volumetric water content (VWC) from ERA5-Land, expressed as m³ of water per m³ of soil. ERA5 provides VWC at four soil depths (0–7 cm, 7–28 cm, 28–100 cm, 100–289 cm). Values range from 0 (completely dry) to about 0.6 (saturated clay soil).

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
    "ISO_639_3_eng" : "Volumetric ratio"
  }
}
```

</details>
