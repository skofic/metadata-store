# `_to`

**`_title`**

Relationship destination

**`_definition`**

The ArangoDB document handle of the destination node of a directed relationship. In the dictionary's many-to-one convention, `_to` is always the root — a container, controlled vocabulary, or schema term — toward which the source node points.

**`_description`**

`_to` holds the handle of the **root** node in a directed edge. Together with [`_from`](_from.md) and [`_predicate`](_predicate.md), it uniquely identifies the relationship. It is part of the triple used to compute the edge [`_key`](_key.md) and is immutable once set.

The value is an ArangoDB document handle in the format `<collection>/<key>`. For dictionary terms, the handle for a term with [`_gid`](_gid.md) value `X` is `terms/X`.

The many-to-one convention means the interpretation of `_to` depends on the predicate:

- For [`_predicate_enum-of`](_predicate_enum-of.md): `_to` is the controlled vocabulary root that `_from` belongs to.
- For [`_predicate_property-of`](_predicate_property-of.md): `_to` is the schema object term that `_from` is a property of.
- For [`_predicate_section-of`](_predicate_section-of.md): `_to` is the graph root under which the section heading is grouped.
- For [`_predicate_bridge-of`](_predicate_bridge-of.md): `_to` is the custom graph whose traversal continues into the bridge's target.

**`_examples`**

The `_to` field of an edge connecting Italy to the ISO 3166-3 enumeration root:

```json
{
	"_from": "terms/ISO_3166_3_ITA",
	"_predicate": "_predicate_enum-of",
	"_to": "terms/ISO_3166_3",
	"_path": ["terms/ISO_3166_3"],
	"_path_data": {}
}
```

Here `terms/ISO_3166_3` is the handle of the root node — the ISO 3166-3 controlled vocabulary.

---

**`_code`**

```json
{
  "_aid" : [
    "to"
  ],
  "_gid" : "_to",
  "_lid" : "to",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_handle" : {

    }
  }
}
```
