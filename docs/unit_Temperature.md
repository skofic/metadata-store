# Thermodynamic temperature
<p><a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>unit_Temperature</code></p>

> Quantity kind for thermodynamic temperature, measuring thermal energy relative to absolute zero.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Units of measurement](unit.md) |
| [Local identifier](_lid.md) | `Temperature` |
| [Global identifier](_gid.md) | `unit_Temperature` |
| [Official identifiers](_aid.md) | `Temperature` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Temperature"
  ],
  "_gid" : "unit_Temperature",
  "_lid" : "Temperature",
  "_nid" : "unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Thermodynamic temperature

**[Definition](_definition.md):** Quantity kind for thermodynamic temperature, measuring thermal energy relative to absolute zero.

**[Description](_description.md)**

Thermodynamic temperature is one of the seven SI base quantities. The SI coherent unit is the **kelvin** ([`unit_Temperature_K`](unit_Temperature_K.md)), where 0 K is absolute zero.

Dimensional analysis (QUDT): `A0E0L0I0M0H1T0D0`.

In the EUFGIS database, temperature units are used for: air temperature (K or °C in climate datasets), land surface temperature from MODIS (K), soil temperature at multiple depths (K), and growing degree-days (°C·day). The Celsius scale is offset from kelvin by exactly 273.15 K. The Fahrenheit scale is included for international interoperability.

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
    "ISO_639_3_eng" : "Thermodynamic temperature"
  }
}
```

</details>
