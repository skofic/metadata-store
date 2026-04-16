# Tonne per hectare (t/ha)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_MassPerArea_t-per-ha</code></p>

> Unit of areal mass density equal to 0.1 kg/m² (since 1 t = 1 000 kg and 1 ha = 10 000 m²).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Mass per area](unit_MassPerArea.md) |
| [Local identifier](_lid.md) | `t-per-ha` |
| [Global identifier](_gid.md) | `unit_MassPerArea_t-per-ha` |
| [Official identifiers](_aid.md) | `t-per-ha` · `t/ha` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "t-per-ha",
    "t\/ha"
  ],
  "_gid" : "unit_MassPerArea_t-per-ha",
  "_lid" : "t-per-ha",
  "_name" : "Tonne per hectare",
  "_nid" : "unit_MassPerArea",
  "_symbol" : "\\mathrm{t\\,ha^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Tonne per hectare (t/ha)

**[Definition](_definition.md):** Unit of areal mass density equal to 0.1 kg/m² (since 1 t = 1 000 kg and 1 ha = 10 000 m²).

**[Description](_description.md)**

Tonne per hectare is the standard unit for above-ground biomass and carbon stock density in forest ecology and remote sensing. ESA CCI Biomass and GLAD Canopy Height products report above-ground biomass density in t/ha (dry matter). Conversion: 1 t/ha = 1000 kg / 10 000 m² = 0.1 kg/m².

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
    "ISO_639_3_eng" : "Tonne per hectare (t\/ha)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L-2I0M1H0T0D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 0.1 |
| [Multiplicative factor](SI_factor.md) | 0.1 |
| [UCUM unit code](UCUM_code.md) | `t/har` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L-2I0M1H0T0D0",
  "QUDT_multiplier" : 0.10000000000000001,
  "SI_factor" : 0.10000000000000001,
  "UCUM_code" : "t\/har"
}
```

</details>
