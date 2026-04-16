# Frequency
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Frequency</code></p>

> Quantity kind for the number of occurrences of a repeating event per unit time.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Frequency` |
| [Global identifier](_gid.md) | `unit_Frequency` |
| [Official identifiers](_aid.md) | `Frequency` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Frequency"
  ],
  "_gid" : "unit_Frequency",
  "_lid" : "Frequency",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Frequency

**[Definition](_definition.md):** Quantity kind for the number of occurrences of a repeating event per unit time.

**[Description](_description.md)**

Frequency is the reciprocal of the period of a periodic phenomenon. The SI coherent unit is the **hertz** ([`unit_Frequency_Hz`](unit_Frequency_Hz.md), equal to 1/s).

Dimensional analysis (QUDT): `A0E0L0I0M0H0T-1D0`.

In the EUFGIS database, frequency-like units express rates of occurrence over ecological time scales: number of frost events per year, number of growing days per year, number of drought events per season. These are practically expressed as per-day, per-month, or per-year rates rather than in hertz.

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
    "ISO_639_3_eng" : "Frequency"
  }
}
```

</details>
