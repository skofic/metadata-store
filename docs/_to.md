# `_to`

**`_title`**

Relationship target

**`_definition`**

The document handle of the destination node in a directed graph edge. Identifies the terminus of the relationship — typically the root, parent, or container in a many-to-one direction.

**`_description`**

In an [edge document](_edge.md), `_to` holds the [document handle](_id.md) of the destination node — the node toward which the directed relationship points. ArangoDB requires this field on all edge documents.

In this dictionary most predicates follow a *many-to-one* direction: [`_from`](_from.md) is the leaf (child, element, member) and `_to` is the root (parent, container, category). For example, in an enumeration edge `_to` is the enumeration root and `_from` is the enumeration element.

The `_to` field is immutable once the edge is created. Together with [`_from`](_from.md) and [`_predicate`](_predicate.md) it uniquely identifies the edge and determines its [key](_key.md).

**`_examples`**

In the following edge, `_to` is the handle of the ISO 3166-3 vocabulary root — the enumeration root, the destination of the relationship:

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
	"_nid": "",
	"_lid": "to",
	"_gid": "_to",
	"_aid": ["to"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_handle"
	}
}
```

**`_domn`**

```json
{}
```
