# Latitude in decimal degrees
<p style="color: #888; margin-top: -0.5em;"><code>latitude_deg</code></p>

> The geographic latitude of a location expressed in decimal degrees, ranging from -90.0 (South Pole) to +90.0 (North Pole).

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `latitude` |
| [Local identifier](_lid.md) | `deg` |
| [Global identifier](_gid.md) | `latitude_deg` |
| [Official identifiers](_aid.md) | `deg` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "latitude",
  "_lid": "deg",
  "_gid": "latitude_deg",
  "_aid": [
    "deg"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Latitude in decimal degrees"
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

**Shape:** [Scalar](_scalar.md) — [Floating-point number](_number_float.md) — valid range: ≥ -90.0, ≤ 90.0

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_number_float": {
      "_range_valid": {
        "_min-inclusive": -90.0,
        "_max-inclusive": 90.0
      }
    }
  }
}
```

</details>
