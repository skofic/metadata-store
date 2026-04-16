# Duration
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Duration</code></p>

> Quantity kind for a measured interval of time between two events.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Duration` |
| [Global identifier](_gid.md) | `unit_Duration` |
| [Official identifiers](_aid.md) | `Duration` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Duration"
  ],
  "_gid" : "unit_Duration",
  "_lid" : "Duration",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Duration

**[Definition](_definition.md):** Quantity kind for a measured interval of time between two events.

**[Description](_description.md)**

Duration (time interval) is derived from time, one of the seven SI base quantities. The SI coherent unit is the **second** ([`unit_Duration_s`](unit_Duration_s.md)).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T1D0`.

In the EUFGIS database, duration units appear in: tree age (years), satellite observation cadence (days, 8-day, 16-day composites), growing season length (days), snow cover duration (days), drought duration (days), and temporal trend slopes expressed per month or per year. Practical calendar units (day, month, year) are used throughout despite not being strict SI units.

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
    "ISO_639_3_eng" : "Duration"
  }
}
```

</details>
