# `_type_object_geojson`

**`_title`**

GeoJSON Object

**`_definition`**

Scalar data type for a GeoJSON object representing a geographic feature. The object must not be empty and no companion `_kind` property is expected.

**`_description`**

When [`_type`](_type.md) is set to `_type_object_geojson`, the descriptor value must be a valid [GeoJSON](https://geojson.org) object — a structured representation of a geographic feature such as a point, line, polygon, or feature collection, conforming to [RFC 7946](https://datatracker.ietf.org/doc/html/rfc7946). Unlike [`_type_object`](_type_object.md) and [`_type_struct`](_type_struct.md), the object must **not** be empty: a GeoJSON value without a `type` property is not valid. No companion qualifier, unit, or range constraint is applicable.

**`_examples`**

**Point geometry** — the coordinates of a single location:

```json
{
	"_scalar": {
		"_type": "_type_object_geojson"
	}
}
```

A valid value for this descriptor might be:

```json
{
	"type": "Point",
	"coordinates": [12.4964, 41.9028]
}
```

This represents a point at longitude 12.4964°E, latitude 41.9028°N (Rome, Italy).



**Polygon geometry** — the boundary of a region:

```json
{
	"type": "Polygon",
	"coordinates": [
		[
			[12.44, 41.87],
			[12.56, 41.87],
			[12.56, 41.94],
			[12.44, 41.94],
			[12.44, 41.87]
		]
	]
}
```

A closed ring of coordinates forming a rectangular boundary. The first and last coordinate must be identical to close the polygon.

---

**`_code`**

```json
{
  "_aid" : [
    "geojson"
  ],
  "_gid" : "_type_object_geojson",
  "_lid" : "geojson",
  "_nid" : "_type_object"
}
```
