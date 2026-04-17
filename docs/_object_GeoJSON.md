# GeoJSON object
<p><a href="_term_role_data-type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_object_GeoJSON</code></p>

> A data shape for a GeoJSON geometry or feature object conforming to RFC 7946 and compatible with ArangoDB's geospatial indexing requirements. The value is validated against the GeoJSON specification with the additional constraint that polygon exterior rings must be ordered counter-clockwise.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Object](_object.md) |
| [Local identifier](_lid.md) | `GeoJSON` |
| [Global identifier](_gid.md) | `_object_GeoJSON` |
| [Official identifiers](_aid.md) | `GeoJSON` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "GeoJSON"
  ],
  "_gid" : "_object_GeoJSON",
  "_lid" : "GeoJSON",
  "_nid" : "_object"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** GeoJSON object

**[Definition](_definition.md):** A data shape for a GeoJSON geometry or feature object conforming to RFC 7946 and compatible with ArangoDB's geospatial indexing requirements. The value is validated against the GeoJSON specification with the additional constraint that polygon exterior rings must be ordered counter-clockwise.

**[Description](_description.md)**

`_object_GeoJSON` is a terminal data shape that marks a descriptor's value as a GeoJSON object. Unlike the general [`_object`](_object.md) shape, it carries no schema constraints expressed in the dictionary's rule language — its validation is performed entirely by a dedicated GeoJSON validator enforcing the requirements of both [RFC 7946](https://datatracker.ietf.org/doc/html/rfc7946) and ArangoDB's geospatial indexing engine.

**Supported geometry types** (RFC 7946 §3.1):

| Type | `coordinates` structure |
|------|------------------------|
| `Point` | `[longitude, latitude]` — a single position |
| `MultiPoint` | array of positions |
| `LineString` | array of two or more positions |
| `MultiLineString` | array of `LineString` coordinate arrays |
| `Polygon` | array of linear rings (exterior first, then holes) |
| `MultiPolygon` | array of `Polygon` coordinate arrays |
| `GeometryCollection` | `geometries` array instead of `coordinates` |

`Feature` and `FeatureCollection` wrappers are also accepted.

**ArangoDB constraint — polygon ring orientation:**

ArangoDB's GEO index requires polygon rings to follow the **right-hand rule** (RFC 7946 §3.1.6): exterior rings must be ordered **counter-clockwise** (CCW) and interior rings (holes) **clockwise** (CW). A polygon submitted with rings in the wrong orientation may be silently accepted by the database but will produce incorrect geospatial query results. The validator must enforce CCW/CW orientation before insertion.

**Coordinate order:** GeoJSON always uses `[longitude, latitude]` order — the reverse of the traditional latitude/longitude convention.

The companion value is always `{}` — no additional configuration properties are defined for this type. Usage in a descriptor's `_data` section:

```json
{
	"_data": {
		"_object": {
			"_object_GeoJSON": {}
		}
	}
}
```

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
    "ISO_639_3_eng" : "GeoJSON object"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
