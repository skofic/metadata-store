# `_path`

**`_title`**

Relationship paths

**`_definition`**

Set of graph root handles whose traversal passes through this edge.

**`_description`**

[Edges](_edge.md) are uniquely identified by their [source](_from.md), [predicate](_predicate.md), and [destination](_to.md) combination. When multiple graphs share the same directed relationship between the same two nodes, they do not create separate edge documents — they share a single edge. This property holds the set of all graph root document handles that route through this edge.

A graph is defined by its root node: all edges whose [`_path`](_path.md) contains that root handle belong to the graph. Filtering edges by a root handle present in [`_path`](_path.md) isolates the edges belonging to a specific graph without creating redundant documents.

---

**`_code`**

```json
{
  "_aid" : [
    "path"
  ],
  "_gid" : "_path",
  "_lid" : "path",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_scalar_set" : {
      "_type_scalar_set" : "_type_handle"
    }
  }
}
```
