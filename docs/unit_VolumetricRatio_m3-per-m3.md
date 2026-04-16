# Cubic metre per cubic metre (m³/m³)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_VolumetricRatio_m3-per-m3</code></p>

> The SI coherent (and only) unit for volumetric ratio, a dimensionless quantity retaining explicit volume notation for semantic clarity.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Volumetric ratio](unit_VolumetricRatio.md) |
| [Local identifier](_lid.md) | `m3-per-m3` |
| [Global identifier](_gid.md) | `unit_VolumetricRatio_m3-per-m3` |
| [Official identifiers](_aid.md) | `m3-per-m3` · `m³/m³` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "m3-per-m3",
    "m³\/m³"
  ],
  "_gid" : "unit_VolumetricRatio_m3-per-m3",
  "_lid" : "m3-per-m3",
  "_name" : "Cubic metre per cubic metre",
  "_nid" : "unit_VolumetricRatio",
  "_symbol" : "\\mathrm{m^3\\,m^{-3}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Cubic metre per cubic metre (m³/m³)

**[Definition](_definition.md):** The SI coherent (and only) unit for volumetric ratio, a dimensionless quantity retaining explicit volume notation for semantic clarity.

**[Description](_description.md)**

Cubic metre per cubic metre is the conventional notation for volumetric ratios in hydrology and soil science. The primary application in the EUFGIS context is **volumetric soil water content (SWC)**: the volume of water per volume of bulk soil. ERA5-Land provides soil water content at multiple depth layers in m³/m³ (typical values 0.05–0.5). MODIS Soil Moisture Index is also derived from this quantity.

The explicit m³/m³ notation prevents confusion with mass-based water content (g/g) or percentage expressions.

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
    "ISO_639_3_eng" : "Cubic metre per cubic metre (m³\/m³)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L0I0M0H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1 |
| [Base unit](SI_base.md) | true |
| [Multiplicative factor](SI_factor.md) | 1 |
| [UCUM unit code](UCUM_code.md) | `m3/m3` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "m3\/m3"
}
```

</details>
