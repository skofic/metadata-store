# Longitude in decimal degrees
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>longitude_deg</code></p>

> The geographic longitude of a location expressed in decimal degrees, ranging from -180.0 to +180.0, measured east and west of the prime meridian (Greenwich).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Longitude](longitude.md) |
| [Local identifier](_lid.md) | `deg` |
| [Global identifier](_gid.md) | `longitude_deg` |
| [Official identifiers](_aid.md) | `deg` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "deg"
  ],
  "_gid" : "longitude_deg",
  "_lid" : "deg",
  "_nid" : "longitude"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Longitude in decimal degrees

**[Definition](_definition.md):** The geographic longitude of a location expressed in decimal degrees, ranging from -180.0 to +180.0, measured east and west of the prime meridian (Greenwich).

**[Description](_description.md)**

Positive values indicate eastern longitudes; negative values indicate western longitudes. The prime meridian (Greenwich) is at 0°. Values are stored as floating-point numbers. Valid range is [-180, +180] inclusive per the WGS84 standard.

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
    "ISO_639_3_eng" : "Longitude in decimal degrees"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Floating point number](_number_float.md) ([Valid numeric range](_range_valid.md): [Range minimum inclusive](_min-inclusive.md): -180; [Range maximum inclusive](_max-inclusive.md): 180)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_number_float" : {
      "_range_valid" : {
        "_max-inclusive" : 180,
        "_min-inclusive" : -180
      }
    }
  }
}
```

</details>
