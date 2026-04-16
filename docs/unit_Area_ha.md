# Hectare (ha)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Area_ha</code></p>

> Unit of area equal to 10 000 m² (one hundred ares).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Area](unit_Area.md) |
| [Local identifier](_lid.md) | `ha` |
| [Global identifier](_gid.md) | `unit_Area_ha` |
| [Official identifiers](_aid.md) | `ha` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "ha"
  ],
  "_gid" : "unit_Area_ha",
  "_lid" : "ha",
  "_name" : "Hectare",
  "_nid" : "unit_Area",
  "_symbol" : "\\mathrm{ha}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hectare (ha)

**[Definition](_definition.md):** Unit of area equal to 10 000 m² (one hundred ares).

**[Description](_description.md)**

The hectare is the standard unit for reporting forest stand area, land cover extent, and areal density of above-ground biomass in forestry and ecology. In the EUFGIS GeoService, ESA CCI Biomass reports carbon stocks in tonnes per hectare (t/ha). Gene conservation units (GCUs) are also characterised by their area in hectares.

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
    "ISO_639_3_eng" : "Hectare (ha)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L2I0M0H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 10000 |
| [Multiplicative factor](SI_factor.md) | 10000 |
| [UCUM unit code](UCUM_code.md) | `har` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L2I0M0H0T0D0",
  "QUDT_multiplier" : 10000,
  "SI_factor" : 10000,
  "UCUM_code" : "har"
}
```

</details>
