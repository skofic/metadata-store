# Latitude in decimal degrees
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>latitude_deg</code></p>

> The geographic latitude of a location expressed in decimal degrees, ranging from -90.0 (South Pole) to +90.0 (North Pole).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Latitude](latitude.md) |
| [Local identifier](_lid.md) | `deg` |
| [Global identifier](_gid.md) | `latitude_deg` |
| [Official identifiers](_aid.md) | `deg` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg"
  ],
  "_gid" : "latitude_deg",
  "_lid" : "deg",
  "_nid" : "latitude"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Latitude in decimal degrees

**[Definition](_definition.md):** The geographic latitude of a location expressed in decimal degrees, ranging from -90.0 (South Pole) to +90.0 (North Pole).

**[Description](_description.md)**

Positive values indicate northern latitudes; negative values indicate southern latitudes. The equator is at 0°. Values are stored as floating-point numbers. Valid range is [-90, +90] inclusive — both extremes represent real, distinct geographic locations (the South Pole and North Pole respectively).

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
    "ISO_639_3_eng" : "Latitude in decimal degrees"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Floating point number](_number_float.md) ([Valid numeric range](_range_valid.md): [Range minimum inclusive](_min-inclusive.md): -90; [Range maximum inclusive](_max-inclusive.md): 90)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_float" : {
      "_range_valid" : {
        "_max-inclusive" : 90,
        "_min-inclusive" : -90
      }
    }
  }
}
```

</details>
