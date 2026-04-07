# `_edge`

**`_title`**

Edge

**`_definition`**

An ArangoDB edge document representing a directed relationship between two nodes in the dictionary graph. Edges encode the relationship type, graph membership, and optional relationship-specific data for a source–destination pair.

**`_description`**

Edges are the building blocks of all graphs in the data dictionary. Each edge connects a [source node](_from.md) ([`_from`](_from.md)) to a [destination node](_to.md) ([`_to`](_to.md)) via a typed [relationship](_predicate.md) ([`_predicate`](_predicate.md)), and declares which [graphs](_path.md) traverse it ([`_path`](_path.md)). The [path data property](_path_data.md) ([`_path_data`](_path_data.md)) carries any data associated with the relationship within a specific graph or node context.

Edge documents are uniquely identified by their source, predicate, and destination: no two edges may share the same [`_from`](_from.md)/[`_predicate`](_predicate.md)/[`_to`](_to.md) combination. The document [key](_key.md) is computed as the MD5 hash of the string formed by joining [`_from`](_from.md), [`_predicate`](_predicate.md), and [`_to`](_to.md) with `/` separators.

Most predicates follow a *many-to-one* direction: [`_from`](_from.md) is the leaf node (child, element, member) and [`_to`](_to.md) is the root node (parent, container, category).

**`_examples`**

**Basic edge** — Italy is a valid element of the ISO 3166-3 vocabulary:

![Basic edge](images/edge-basic.svg)

**Shared edge** — the same edge also belongs to a second graph, `MyCountries`. Adding `MyCountries` to [`_path`](_path.md) is all that is needed; no new edge document is created:

![Shared edge](images/edge-shared.svg)

The bridge edge connects `MyCountries` to the full ISO 3166-3 vocabulary:

![Bridge edge](images/edge-bridge.svg)

---

**`_code`**

```json
{
  "_aid" : [
    "edge"
  ],
  "_gid" : "_edge",
  "_lid" : "edge",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_edge"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_computed" : [
    "_key"
  ],
  "_default-value" : {
    "_path_data" : {

    }
  },
  "_immutable" : [
    "_key",
    "_from",
    "_to",
    "_predicate"
  ],
  "_required" : [
    {
      "_selection_descriptors" : [
        "_from",
        "_to",
        "_predicate",
        "_path",
        "_path_data"
      ],
      "_selection_rules" : [
        {
          "_selection_type" : "_type_selection_mandatory"
        }
      ]
    }
  ]
}
```
