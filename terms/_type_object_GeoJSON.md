# `_type_object_GeoJSON`

**`_title`**

GeoJSON object

**`_definition`**

The scalar data type for GeoJSON objects conforming to RFC 7946. The value must be a valid GeoJSON geometry, Feature, or FeatureCollection object and is always non-empty.

**`_description`**

`_type_object_GeoJSON` declares that the value must be a valid [GeoJSON](https://geojson.org) object conforming to [RFC 7946](https://datatracker.ietf.org/doc/html/rfc7946). [GeoJSON](https://geojson.org) is a standard format for encoding geographic data structures as JSON — geometries (Point, LineString, Polygon, and their multi-element variants), Features, and FeatureCollections. Every GeoJSON object carries required fields defined by the standard and is therefore always non-empty. The GeoJSON schema is self-contained in the type declaration; no [`_object_types`](_object_types.md) companion is needed. Not a member of [`_type_data_comparable`](_type_data_comparable.md).

---

**`_code`**

```json
{
	"_nid": "_type_object",
	"_lid": "GeoJSON",
	"_gid": "_type_object_GeoJSON",
	"_aid": ["GeoJSON"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
