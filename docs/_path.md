# Relationship path
<p style="color: #888; margin-top: -0.5em;"><code>_path</code></p>

> The set of document handles identifying the graphs to which this edge belongs. Each handle points to a graph root node. Filtering edges by a value present in `_path` isolates all edges that belong to that specific graph.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `path` |
| [Global identifier](_gid.md) | `_path` |
| [Official identifiers](_aid.md) | `path` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "path",
  "_gid": "_path",
  "_aid": [
    "path"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Relationship path

**[Definition](_definition.md):** The set of document handles identifying the graphs to which this edge belongs. Each handle points to a graph root node. Filtering edges by a value present in `_path` isolates all edges that belong to that specific graph.

**[Description](_description.md)**

`_path` is the mechanism by which edges are assigned to named graphs. Each element of the set is a document handle of a **graph root** — the term that anchors and identifies a particular graph.

Because `_path` is a set, a single edge can belong to multiple graphs simultaneously. When two graphs need to express the same directed relationship (the same [`_from`](_from.md)/[`_predicate`](_predicate.md)/[`_to`](_to.md) triple), the edge document is shared: both graph root handles are placed in `_path`. This eliminates redundant edge records and keeps the edge collection compact.

To traverse a specific graph, an AQL query filters the edge collection to documents where `_path` contains the handle of that graph's root node. Restricting to [`_predicate_enum-of`](_predicate_enum-of.md) edges produces the list of valid enumeration values; including [`_predicate_section-of`](_predicate_section-of.md) edges produces the display tree.

**Bridge graphs** exploit this mechanism directly. A bridge allows a custom subset graph to share individual edges from a complete graph without duplicating them. Adding an element to the subset requires only inserting its graph root handle into `_path` on the relevant edge — no new document is written. The [`_predicate_bridge-of`](_predicate_bridge-of.md) predicate marks the bridge node itself.

Because edge uniqueness is enforced on the `_from`/`_predicate`/`_to` triple, a graph root handle should never appear more than once in a given `_path` set.

**[Examples](_examples.md)**

An edge belonging to a single graph:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

A bridge graph: `MyCountries` is a custom subset that includes Italy from the full ISO 3166-3 vocabulary. Two edges are needed — the shared element edge and the bridge declaration:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3", "terms/MyCountries"],
	"_path_data": {}
}
```

```json
{
	"_from": "terms/ISO_3166_3",
	"_predicate": "_predicate_bridge-of",
	"_to": "terms/MyCountries",
	"_path": ["terms/MyCountries"],
	"_path_data": {}
}
```

The first edge belongs to both graphs: Italy is a member of the full ISO 3166-3 vocabulary and, through the bridge, also a member of `MyCountries`. The second edge marks `terms/ISO_3166_3` as a bridge node within `MyCountries`: during traversal of `MyCountries`, the bridge node is skipped and `terms/ISO_3166_3_ITA` is treated as a direct `_predicate_enum-of` member of `terms/MyCountries`.

To retrieve all members of the `MyCountries` graph:

```aql
FOR e IN edges
	FILTER "terms/MyCountries" IN e._path
	FILTER e._predicate == "_predicate_enum-of"
	RETURN e._from
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Relationship path"
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

**Shape:** [Set](_set.md) of [Document handle](_handle.md)

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_handle": {}
  }
}
```

</details>
