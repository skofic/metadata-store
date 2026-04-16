# Velocity
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Velocity</code></p>

> Quantity kind for the rate of change of position with respect to time.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Velocity` |
| [Global identifier](_gid.md) | `unit_Velocity` |
| [Official identifiers](_aid.md) | `Velocity` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Velocity"
  ],
  "_gid" : "unit_Velocity",
  "_lid" : "Velocity",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Velocity

**[Definition](_definition.md):** Quantity kind for the rate of change of position with respect to time.

**[Description](_description.md)**

Velocity (or speed when direction is not specified) is distance divided by time. The SI coherent unit is the **metre per second** ([`unit_Velocity_m-per-s`](unit_Velocity_m-per-s.md)).

Dimensional analysis (QUDT): `A0E0L1I0M0H0T-1D0`.

In the EUFGIS database, velocity units appear exclusively as wind speed, typically expressed in metres per second (ERA5, CHELSA) or kilometres per hour. The knot is included for interoperability with meteorological datasets that follow nautical conventions.

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
    "ISO_639_3_eng" : "Velocity"
  }
}
```

</details>
