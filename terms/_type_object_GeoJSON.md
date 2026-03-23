# `_type_object_GeoJSON`

**`_title`**

GeoJSON Object

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a GeoJSON object representing a geographic feature. The object must not be empty and no companion properties are expected.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_object_GeoJSON`, the descriptor value must be a valid [GeoJSON](https://geojson.org) object conforming to [RFC 7946](https://datatracker.ietf.org/doc/html/rfc7946) — a structured representation of a geographic feature such as a point, line, polygon, or feature collection. Unlike [`_type_object`](_type_object.md) and [`_type_struct`](_type_struct.md), the object must **not** be empty: a GeoJSON value without a `type` property is invalid. No companion properties are applicable.

**`_examples`**

**Point geometry** — the coordinates of a single location:

```json
{
	"_scalar": {
		"_type_scalar": "_type_object_GeoJSON"
	}
}
```

A valid value for this descriptor:

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
    "GeoJSON"
  ],
  "_gid" : "_type_object_GeoJSON",
  "_lid" : "GeoJSON",
  "_nid" : "_type_object"
}
```
