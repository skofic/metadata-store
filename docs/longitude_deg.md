# Longitude in decimal degrees
<p style="color: #888; margin-top: -0.5em;"><code>longitude_deg</code></p>

> The geographic longitude of a location expressed in decimal degrees, ranging from -180.0 to +180.0, measured east and west of the prime meridian (Greenwich).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `longitude` |
| [Local identifier](_lid.md) | `deg` |
| [Global identifier](_gid.md) | `longitude_deg` |
| [Official identifiers](_aid.md) | `deg` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "longitude",
  "_lid": "deg",
  "_gid": "longitude_deg",
  "_aid": [
    "deg"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Longitude in decimal degrees"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Floating-point number](_number_float.md) — valid range: ≥ -180.0, ≤ 180.0

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_number_float": {
      "_range_valid": {
        "_min-inclusive": -180.0,
        "_max-inclusive": 180.0
      }
    }
  }
}
```

</details>
