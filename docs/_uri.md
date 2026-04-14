# Uniform Resource Identifier
<p style="color: #888; margin-top: -0.5em;"><code>_uri</code></p>

> A persistent URI that uniquely identifies the real-world entity, concept, or standard that this term represents in an external authority, knowledge graph, or registry. This is an identity reference, not a documentation link — it points to what the term is, not to material that describes it.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `uri` |
| [Global identifier](_gid.md) | `_uri` |
| [Official identifiers](_aid.md) | `uri` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "uri",
  "_gid": "_uri",
  "_aid": [
    "uri"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Uniform Resource Identifier

**[Definition](_definition.md):** A persistent URI that uniquely identifies the real-world entity, concept, or standard that this term represents in an external authority, knowledge graph, or registry. This is an identity reference, not a documentation link — it points to what the term is, not to material that describes it.

**[Description](_description.md)**

Many real-world entities already carry a canonical identifier in an external system: a Wikidata Q-identifier for a country or language, a GeoNames URI for a geographic location, a Dublin Core or schema.org URI for a metadata property. This property records that external identifier, linking the dictionary term to the corresponding node in an authority file or knowledge graph.

This distinguishes `_uri` from [`_url`](_url.md) in the [documentation section](_info.md). `_url` is a set of internet references that describe or document the term — its Wikipedia page, the official standard PDF, a registry entry. `_uri` is a single persistent identity link: it answers the question *what external node is this term the same thing as?*

The value is a single URI string of type [`_string_URI`](_string_URI.md). When a term corresponds to a concept that is already canonically identified in a linked-data graph (e.g. Wikidata, GeoNames, schema.org, Dublin Core, SKOS), record that URI here. Terms with no external identity equivalent — dictionary building blocks, internal predicates — will typically leave this property absent.

**[Examples](_examples.md)**

The ISO 3166-1 term for Italy linked to its Wikidata entity:

```json
{
	"_code": {
		"_nid": "ISO_3166_1",
		"_lid": "ITA",
		"_gid": "ISO_3166_1_ITA",
		"_aid": ["ITA", "IT", "380"],
		"_uri": "https://www.wikidata.org/entity/Q38"
	}
}
```

The ISO 639-3 term for the English language linked to its Wikidata entity:

```json
{
	"_code": {
		"_nid": "ISO_639_3",
		"_lid": "eng",
		"_gid": "ISO_639_3_eng",
		"_aid": ["eng", "en"],
		"_uri": "https://www.wikidata.org/entity/Q1860"
	}
}
```

Other typical URIs:

- `https://sws.geonames.org/3175395/` — GeoNames URI for Italy
- `http://schema.org/name` — schema.org URI for a property descriptor term
- `http://purl.org/dc/elements/1.1/title` — Dublin Core URI for the title property

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Uniform Resource Identifier"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [URI string](_string_URI.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_string_URI": {}
  }
}
```

</details>
