# `_predicate_bridge-of`

**`_title`**

Bridge of

**`_definition`**

The source node (an existing graph root) is bridged into the destination node (a custom graph root); the source node is skipped during traversal of the destination graph.

**`_description`**

This [predicate](_predicate.md) allows a custom graph to include elements from an existing complete graph without duplicating [edge](_edge.md) documents. A [`_predicate_bridge-of`](_predicate_bridge-of.md) edge connects the existing graph root (source) to the custom graph root (destination). The existing graph root is then skipped during traversal of the custom graph; shared elements are found by following functional edges whose [`_path`](_path.md) set contains the custom graph root.

This mechanism avoids duplicating edges: each element edge exists once, carrying all applicable graph roots in its [`_path`](_path.md) set. Additional custom graphs that include the same elements simply add their root to the [`_path`](_path.md) of the relevant element edges.

**`_examples`**

Suppose `ISO_3166_1` is the complete country vocabulary and you want to create a new vocabulary `EUROPE` containing only European countries.

```json
{
	"_from": "terms/ISO_3166_1_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_1",
	"_path": ["terms/ISO_3166_1", "terms/EUROPE"],
	"_path_data": {}
},
{
	"_from": "terms/ISO_3166_1",
	"_predicate": "_predicate_bridge-of",
	"_to": "terms/EUROPE",
	"_path": ["terms/EUROPE"],
	"_path_data": {}
}
```

The first edge is Italy's existing membership edge in `ISO_3166_1`, extended by adding `EUROPE` to its [`_path`](_path.md). The second edge is the bridge: it connects the `ISO_3166_1` root to the `EUROPE` root. When traversing `EUROPE`, the `ISO_3166_1` node is skipped (bridge); Italy is found through the first edge because `EUROPE` is in its [`_path`](_path.md).

A second vocabulary `LATIN_EUROPE` that also includes Italy would add `terms/LATIN_EUROPE` to the first edge's [`_path`](_path.md) and create its own bridge edge — without creating a new element edge for Italy.

---

**`_code`**

```json
{
  "_aid" : [
    "bridge-of"
  ],
  "_gid" : "_predicate_bridge-of",
  "_lid" : "bridge-of",
  "_nid" : "_predicate"
}
```
