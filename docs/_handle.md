# `_handle`

**`_title`**

Document handle

**`_definition`**

The scalar data type for ArangoDB document handles — strings in the form `<collection>/<_key>` identifying a specific document in a specific collection.

**`_description`**

`_handle` declares that the value is an ArangoDB document handle (document ID): a string combining the collection name and the document key separated by a forward slash (e.g. `terms/_code`). Used in edge document [`_from`](_from.md) and [`_to`](_to.md) fields and in graph [`_path`](_path.md) sets. No companion properties apply. Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_handle": {}
	}
}
```

Stored values: `"terms/_string_date"`, `"terms/ISO_3166_3_ITA"`, `"edges/00ab12cd"`.

---

**`_code`**

```json
{
  "_nid": "",
  "_lid": "handle",
  "_gid": "_handle",
  "_aid": [
    "handle"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {}
  }
}
```
