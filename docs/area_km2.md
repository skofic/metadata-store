# Area in square kilometers
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>area_km2</code></p>

> The total surface area of a country or territory expressed in square kilometers.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Area](area.md) |
| [Local identifier](_lid.md) | `km2` |
| [Global identifier](_gid.md) | `area_km2` |
| [Official identifiers](_aid.md) | `km2` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "km2"
  ],
  "_gid" : "area_km2",
  "_lid" : "km2",
  "_nid" : "area"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Area in square kilometers

**[Definition](_definition.md):** The total surface area of a country or territory expressed in square kilometers.

**[Description](_description.md)**

Includes both land area and inland water bodies. Values are floating-point numbers in km². The unit symbol is `km^2`; the unit name is Square kilometers.

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
    "ISO_639_3_eng" : "Area in square kilometers"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Floating point number](_number_float.md) ([Unit symbol](_unit_symbol.md): `km^2`)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_float" : {
      "_unit_name" : {
        "ISO_639_3_eng" : "Square kilometers"
      },
      "_unit_symbol" : "km^2"
    }
  }
}
```

</details>
