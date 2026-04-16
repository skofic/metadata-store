# Length
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Length</code></p>

> Quantity kind for one-dimensional spatial extent.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Length` |
| [Global identifier](_gid.md) | `unit_Length` |
| [Official identifiers](_aid.md) | `Length` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Length"
  ],
  "_gid" : "unit_Length",
  "_lid" : "Length",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Length

**[Definition](_definition.md):** Quantity kind for one-dimensional spatial extent.

**[Description](_description.md)**

Length measures the distance between two points along a straight line. The SI coherent unit is the **metre** ([`unit_Length_m`](unit_Length_m.md)).

Dimensional analysis (QUDT): `A0E0L1I0M0H0T0D0`.

In the EUFGIS database, length units appear in elevation (m), tree height (m), canopy height (m), crown dimensions (m), trunk circumference (cm), soil depth (cm), rooting depth (cm), and precipitation depth expressed as a liquid water equivalent (mm). Imperial units (foot, inch, mile) are included for interoperability with datasets that use them.

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
    "ISO_639_3_eng" : "Length"
  }
}
```

</details>
