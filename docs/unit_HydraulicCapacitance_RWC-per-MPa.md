# Percent relative water content per megapascal (%RWC/MPa)
<p><a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_HydraulicCapacitance_RWC-per-MPa</code></p>

> Conventional unit for hydraulic capacitance of plant tissue: the change in relative water content (% RWC) per unit change in water potential (MPa). Dimensionally equivalent to Pa⁻¹ (or 10⁻⁸ Pa⁻¹ when % = 0.01 and MPa = 10⁶ Pa).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Hydraulic capacitance](unit_HydraulicCapacitance.md) |
| [Local identifier](_lid.md) | `RWC-per-MPa` |
| [Global identifier](_gid.md) | `unit_HydraulicCapacitance_RWC-per-MPa` |
| [Official identifiers](_aid.md) | `RWC-per-MPa` · `%RWC/MPa` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "RWC-per-MPa",
    "%RWC\/MPa"
  ],
  "_gid" : "unit_HydraulicCapacitance_RWC-per-MPa",
  "_lid" : "RWC-per-MPa",
  "_name" : "Percent relative water content per megapascal",
  "_nid" : "unit_HydraulicCapacitance",
  "_symbol" : "\\%\\mathrm{RWC\\,MPa^{-1}}"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Percent relative water content per megapascal (%RWC/MPa)

**[Definition](_definition.md):** Conventional unit for hydraulic capacitance of plant tissue: the change in relative water content (% RWC) per unit change in water potential (MPa). Dimensionally equivalent to Pa⁻¹ (or 10⁻⁸ Pa⁻¹ when % = 0.01 and MPa = 10⁶ Pa).

**[Description](_description.md)**

Hydraulic capacitance quantifies the ability of plant tissue to buffer water potential fluctuations by releasing stored water. It is defined as dRWC/dΨ, where RWC is relative water content (0–100 %) and Ψ is water potential (MPa).

The %RWC/MPa convention is dominant in the plant hydraulics literature. Dimensionally: (dimensionless / Pa) = Pa⁻¹. Since 1 % = 0.01 and 1 MPa = 10⁶ Pa, the conversion to SI (Pa⁻¹) is:

1 %RWC/MPa = 0.01 / 10⁶ Pa = 10⁻⁸ Pa⁻¹

The SI coherent unit for hydraulic capacitance is Pa⁻¹ ([`unit_HydraulicCapacitance_per-Pa`](unit_HydraulicCapacitance_per-Pa.md)).

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
    "ISO_639_3_eng" : "Percent relative water content per megapascal (%RWC\/MPa)"
  }
}
```

</details>

---

## [Properties section](_prop.md)

| Property | Value |
|---|---|
| [Dimension vector](QUDT_dimension_vector.md) | `A0E0L1I0M-1H0T2D0` |
| [QUDT conversion multiplier](QUDT_multiplier.md) | 1e-08 |
| [Multiplicative factor](SI_factor.md) | 1e-08 |
| [UCUM unit code](UCUM_code.md) | `%/MPa` |
| [Valid numeric range](_range_valid.md) | *see JSON* |

<details>
<summary>JSON</summary>

```json
{
  "_range_valid" : {
    "_min-inclusive" : 0
  },
  "QUDT_dimension_vector" : "A0E0L1I0M-1H0T2D0",
  "QUDT_multiplier" : 1e-08,
  "SI_factor" : 1e-08,
  "UCUM_code" : "%\/MPa"
}
```

</details>
