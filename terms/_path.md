# `_path`

**`_title`**

Relationship paths

**`_definition`**

The set of graph root handles whose traversal passes through this edge. Each handle identifies a graph that routes through this source–predicate–destination relationship.

**`_description`**

[Edges](_edge.md) are uniquely identified by their [source](_from.md), [predicate](_predicate.md), and [destination](_to.md). When multiple graphs share the same directed relationship between the same two nodes, they do not create separate edge documents — they share a single edge. `_path` holds the set of all graph root [handles](_id.md) that route through this edge.

A graph is defined by its root node: all edges whose `_path` set contains that root handle belong to the graph. Filtering edges by a root handle present in `_path` isolates the edges of a specific graph without duplicating documents. When a new graph needs to include an existing edge, it simply adds its root handle to the edge's `_path` set — no new edge is created.

**`_examples`**

A basic edge belonging to one graph — only the ISO 3166-3 root is in `_path`:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

The same edge shared by a second graph `MyCountries`. No new document is created — `MyCountries` is simply added to `_path`:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3", "terms/MyCountries"],
	"_path_data": {}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "path",
	"_gid": "_path",
	"_aid": ["path"]
}
```

**`_data`**

```json
{
	"_set": {
		"_comparable": {
			"_comparable_type": "_type_handle"
		}
	}
}
```

**`_domn`**

```json
{}
```
