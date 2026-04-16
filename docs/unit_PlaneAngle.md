# Plane angle
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_PlaneAngle</code></p>

> Quantity kind for the angle between two rays sharing a common endpoint, measured in a single plane.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `PlaneAngle` |
| [Global identifier](_gid.md) | `unit_PlaneAngle` |
| [Official identifiers](_aid.md) | `PlaneAngle` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "PlaneAngle"
  ],
  "_gid" : "unit_PlaneAngle",
  "_lid" : "PlaneAngle",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Plane angle

**[Definition](_definition.md):** Quantity kind for the angle between two rays sharing a common endpoint, measured in a single plane.

**[Description](_description.md)**

Plane angle is technically a dimensionless quantity (the ratio of arc length to radius), but it is treated as a distinct quantity kind in practice. The SI coherent unit is the **radian** ([`unit_PlaneAngle_rad`](unit_PlaneAngle_rad.md)).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T0D0` (dimensionless).

In the EUFGIS database, angle units appear in topographic measurements (slope in degrees, aspect in degrees) and in geographic coordinates (decimal degrees of latitude and longitude). The degree (°), decimal degree (DD), and gradian (grad) are the practical units used by field instruments and GIS systems.

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
    "ISO_639_3_eng" : "Plane angle"
  }
}
```

</details>
