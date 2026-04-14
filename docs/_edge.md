# Edge
<p style="color: #888; margin-top: -0.5em;"><code>_edge</code></p>

> The document structure of a directed relationship between two nodes in a dictionary graph. Each edge encodes its source, destination, predicate, graph membership, and any associated data. The `_key` is computed from the MD5 hash of the source, predicate, and destination.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `edge` |
| [Global identifier](_gid.md) | `_edge` |
| [Official identifiers](_aid.md) | `edge` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "edge",
  "_gid": "_edge",
  "_aid": [
    "edge"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Edge

**[Definition](_definition.md):** The document structure of a directed relationship between two nodes in a dictionary graph. Each edge encodes its source, destination, predicate, graph membership, and any associated data. The `_key` is computed from the MD5 hash of the source, predicate, and destination.

**[Description](_description.md)**

An *edge* document represents a directed relationship between two term documents stored in an ArangoDB edge collection. It is the fundamental building block of every graph in the dictionary — enumerations, schemas, aliases, and bridge graphs are all expressed as sets of edges.

Five custom properties define an edge:

- [`_from`](_from.md) — the document handle of the **source** node (leaf, child, element)
- [`_to`](_to.md) — the document handle of the **destination** node (root, parent, container)
- [`_predicate`](_predicate.md) — the enumeration value that qualifies the relationship type
- [`_path`](_path.md) — the set of graph root handles whose traversal passes through this edge
- [`_path_data`](_path_data.md) — an open dictionary of data associated with the edge

All edges follow the **many-to-one direction**: `_from` is always the leaf and `_to` is always the root. This convention applies to all currently defined predicate types; future predicate types may define different traversal directions.

[`_key`](_key.md) is set automatically by the system as the lowercase MD5 hash of the concatenation `_from + "/" + _predicate + "/" + _to`. This guarantees that no two edges can share the same `_from`/`_predicate`/`_to` triple, and that when multiple graphs share the same directed relationship they reuse a single edge document — with each graph root handle added to `_path`.

The two built-in ArangoDB properties [`_id`](_id.md) and [`_rev`](_rev.md) are locked (managed by the system). `_key`, `_from`, `_to`, and `_predicate` are immutable once set.

**[Examples](_examples.md)**

A minimal edge connecting Italy to the ISO 3166-3 enumeration:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

The same edge shared by two graphs — the full ISO 3166-3 vocabulary and a custom `MyCountries` subset:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3", "terms/MyCountries"],
	"_path_data": {}
}
```

Both graphs traverse the same edge document. Adding Italy to `MyCountries` costs only a handle insertion into `_path`, not a new edge record.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Edge"
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

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_required": [
        {
          "_selectors": [
            {
              "_all": {}
            }
          ],
          "_selection": [
            "_from",
            "_to",
            "_predicate",
            "_path",
            "_path_data"
          ]
        }
      ],
      "_computed": [
        "_key"
      ],
      "_immutable": [
        "_key",
        "_from",
        "_to",
        "_predicate"
      ],
      "_locked": [
        "_id",
        "_rev"
      ],
      "_default-value": {
        "_path_data": {}
      }
    }
  }
}
```

</details>
