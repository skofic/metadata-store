# `_type_handle`

**`_title`**

Document Handle

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a string representing the `_id` of an ArangoDB document, in `<collection>/<_key>` form. Unlike [`_type_key`](_type_key.md), a handle includes the collection name.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_handle`, the descriptor value is a string in ArangoDB document handle format: `<collection name>/<_key>` (e.g. `terms/ISO_639_3_eng`). Unlike [`_type_key`](_type_key.md), a handle identifies both the collection and the document within it. No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_handle"
	}
}
```

**`_examples`**

**Document handle** — a reference to a specific document including its collection:

```json
{
	"_scalar": {
		"_type_scalar": "_type_handle"
	}
}
```

Valid values have the form `<collection>/<_key>`, for example `terms/ISO_639_3_eng` (the English language term in the `terms` collection) or `edges/a1b2c3d4` (an edge document). The collection name is part of the value, distinguishing this type from [`_type_key`](_type_key.md) which carries only the `_key` portion.

---

**`_code`**

```json
{
  "_aid" : [
    "handle"
  ],
  "_gid" : "_type_handle",
  "_lid" : "handle",
  "_nid" : "_type"
}
```
