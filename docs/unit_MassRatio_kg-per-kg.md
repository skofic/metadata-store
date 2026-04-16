# Kilogram per kilogram (kg/kg)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_MassRatio_kg-per-kg</code></p>

> The SI coherent (and only) unit for mass ratio, a dimensionless quantity retaining explicit mass notation for semantic clarity.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Mass ratio](unit_MassRatio.md) |
| [Local identifier](_lid.md) | `kg-per-kg` |
| [Global identifier](_gid.md) | `unit_MassRatio_kg-per-kg` |
| [Official identifiers](_aid.md) | `kg-per-kg` · `kg/kg` · `g/g` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kg-per-kg",
    "kg\/kg",
    "g\/g"
  ],
  "_gid" : "unit_MassRatio_kg-per-kg",
  "_lid" : "kg-per-kg",
  "_name" : "Kilogram per kilogram",
  "_nid" : "unit_MassRatio",
  "_symbol" : "\\mathrm{kg\\,kg^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Kilogram per kilogram (kg/kg)

**[Definition](_definition.md):** The SI coherent (and only) unit for mass ratio, a dimensionless quantity retaining explicit mass notation for semantic clarity.

**[Description](_description.md)**

Kilogram per kilogram (equivalently, g/g or any mass/same-mass ratio) is the conventional notation for mass-based ratios. In the EUFGIS context it is used for **specific humidity** from ERA5-Land (kg of water vapour per kg of moist air) and for **fuel moisture content** from the European Drought Observatory wildfire vulnerability indicator (g_H₂O / g_DryMass).

The explicit kg/kg notation prevents confusion with volumetric ratios or percentage expressions.

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
    "ISO_639_3_eng" : "Kilogram per kilogram (kg\/kg)"
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
| [UCUM unit code](UCUM_code.md) | `kg/kg` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "kg\/kg"
}
```

</details>
