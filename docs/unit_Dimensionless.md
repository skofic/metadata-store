# Dimensionless
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Dimensionless</code></p>

> Quantity kind for pure ratios and indices that have no physical dimension.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Dimensionless` |
| [Global identifier](_gid.md) | `unit_Dimensionless` |
| [Official identifiers](_aid.md) | `Dimensionless` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Dimensionless"
  ],
  "_gid" : "unit_Dimensionless",
  "_lid" : "Dimensionless",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dimensionless

**[Definition](_definition.md):** Quantity kind for pure ratios and indices that have no physical dimension.

**[Description](_description.md)**

Dimensionless quantities are ratios of two commensurable physical quantities, so their units cancel. The SI coherent unit is the **unit one** ([`unit_Dimensionless_1`](unit_Dimensionless_1.md), numerically equal to 1).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0`.

In the EUFGIS database, dimensionless units appear in all remote-sensing spectral indices and ecological ratios that are not expressed as percentages: NDVI (−1 to 1), NDWI (−1 to 1), FPAR (0 to 1), SMI (0 to 1), aridity index, proportions (0 to 1), and population genetics indices (Hs, Fst, Fis, allele frequencies, admixture coefficients). All of these are stored as plain floating-point numbers with no scaling.

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
    "ISO_639_3_eng" : "Dimensionless"
  }
}
```

</details>
