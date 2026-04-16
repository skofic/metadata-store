# Dimensionless unit one (1)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Dimensionless_1</code></p>

> The SI coherent unit for dimensionless quantities: a pure number with no unit of measurement.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Dimensionless](unit_Dimensionless.md) |
| [Local identifier](_lid.md) | `1` |
| [Global identifier](_gid.md) | `unit_Dimensionless_1` |
| [Official identifiers](_aid.md) | `1` · `unitless` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "1",
    "unitless"
  ],
  "_gid" : "unit_Dimensionless_1",
  "_lid" : "1",
  "_name" : "Dimensionless unit one",
  "_nid" : "unit_Dimensionless",
  "_symbol" : "1"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dimensionless unit one (1)

**[Definition](_definition.md):** The SI coherent unit for dimensionless quantities: a pure number with no unit of measurement.

**[Description](_description.md)**

Dimensionless quantities are pure ratios or indices whose value is independent of any unit system. In the EUFGIS database, dimensionless indices on the [0, 1] scale include:

- **NDVI** (Normalized Difference Vegetation Index) — Sentinel-2 and MODIS derived, range −1 to 1
- **NDWI** (Normalized Difference Water Index) — range −1 to 1
- **FPAR** (Fraction of Absorbed Photosynthetically Active Radiation) — MODIS, range 0 to 1
- **Genetic indices**: Fst (fixation index), Fis (inbreeding coefficient), nucleotide diversity π, admixture Q-values — range 0 to 1
- **Frost damage fraction**, **carbon starvation fraction** (modelled variables)

SI_factor is 1.0; no conversion is required. Values should be stored as the decimal fraction (0.0–1.0), not as a percentage.

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
    "ISO_639_3_eng" : "Dimensionless unit one (1)"
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
| [UCUM unit code](UCUM_code.md) | `1` |

<details>
<summary>JSON</summary>

```json
{
  "QUDT_dimension_vector" : "A0E0L0I0M0H0T0D0",
  "QUDT_multiplier" : 1,
  "SI_base" : true,
  "SI_factor" : 1,
  "UCUM_code" : "1"
}
```

</details>
