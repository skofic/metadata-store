# `_from`

**`_title`**

Relationship source

**`_definition`**

The document handle of the source node in a directed graph edge. Identifies the origin of the relationship — typically the leaf, child, or member in a many-to-one direction.

**`_description`**

In an [edge document](_edge.md), `_from` holds the [document handle](_id.md) of the source node — the node from which the directed relationship originates. ArangoDB requires this field on all edge documents.

In this dictionary most predicates follow a *many-to-one* direction: `_from` is the leaf (child, element, member) and [`_to`](_to.md) is the root (parent, container, category). For example, in an enumeration edge `_from` is the enumeration element and `_to` is the enumeration root.

The `_from` field is immutable once the edge is created. Together with [`_predicate`](_predicate.md) and [`_to`](_to.md) it uniquely identifies the edge and determines its [key](_key.md).

**`_examples`**

In the following edge, `_from` is the handle of the Italy term — the enumeration element, the leaf of the relationship:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "from"
  ],
  "_gid" : "_from",
  "_lid" : "from",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_handle"
  }
}
```
