# Hydraulic capacitance
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_HydraulicCapacitance</code></p>

> Quantity kind for the change in relative water content of plant tissue per unit change in water potential.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `HydraulicCapacitance` |
| [Global identifier](_gid.md) | `unit_HydraulicCapacitance` |
| [Official identifiers](_aid.md) | `HydraulicCapacitance` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "HydraulicCapacitance"
  ],
  "_gid" : "unit_HydraulicCapacitance",
  "_lid" : "HydraulicCapacitance",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hydraulic capacitance

**[Definition](_definition.md):** Quantity kind for the change in relative water content of plant tissue per unit change in water potential.

**[Description](_description.md)**

Hydraulic capacitance is a plant physiology quantity that describes the ability of tissue to buffer changes in water potential by releasing stored water. It is the ratio of a fractional change in tissue water content (expressed as % relative water content, %RWC) to the corresponding change in water potential (expressed in MPa). The SI coherent unit is the **pascal inverse** ([`unit_HydraulicCapacitance_per-Pa`](unit_HydraulicCapacitance_per-Pa.md), equal to m·kg⁻¹·s²), since %RWC is dimensionless and MPa is pressure.

Dimensional analysis (QUDT): `A0E0L1I0M-1H0T2D0`.

In the EUFGIS database, hydraulic capacitance (Cbranch) is expressed in %RWC MPa⁻¹. A high capacitance means the branch can buffer a large change in water potential from a relatively small release of stored water, buffering the plant against rapid desiccation during drought.

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
    "ISO_639_3_eng" : "Hydraulic capacitance"
  }
}
```

</details>
