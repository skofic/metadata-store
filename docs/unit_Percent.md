# Percent
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Percent</code></p>

> Quantity kind for dimensionless quantities expressed on a scale of 0 to 100.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Percent` |
| [Global identifier](_gid.md) | `unit_Percent` |
| [Official identifiers](_aid.md) | `Percent` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Percent"
  ],
  "_gid" : "unit_Percent",
  "_lid" : "Percent",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Percent

**[Definition](_definition.md):** Quantity kind for dimensionless quantities expressed on a scale of 0 to 100.

**[Description](_description.md)**

Percent is a dimensionless unit equal to 0.01 (one hundredth). Values expressed in percent are identical to the corresponding fraction multiplied by 100. The SI coherent unit is the **unit one** ([`unit_Dimensionless_1`](unit_Dimensionless_1.md)); the percent unit ([`unit_Percent_pct`](unit_Percent_pct.md)) has `SI_factor: 0.01`.

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless).

In the EUFGIS database, percent units appear in: relative humidity (0–100%), cloud cover fraction (clt, 0–100%), soil coarse element proportion (0–100%), canopy defoliation class (%RWC in hydraulic capacitance), and desiccation risk (percentage loss of hydraulic conductance, 0–100%). Percent and the pure dimensionless ratio are kept as separate quantity kinds because 80% and 0.80 convey the same quantity but require different scale expectations in a user interface.

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
    "ISO_639_3_eng" : "Percent"
  }
}
```

</details>
