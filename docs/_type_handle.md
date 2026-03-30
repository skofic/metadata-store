# `_type_handle`

**`_title`**

Document handle

**`_definition`**

The scalar data type for ArangoDB document handles — strings in the form `<collection>/<_key>` identifying a specific document in a specific collection.

**`_description`**

`_type_handle` declares that the value is an ArangoDB document handle (document ID): a string combining the collection name and the document key separated by a forward slash (e.g. `terms/_code`). Used in edge document [`_from`](_from.md) and [`_to`](_to.md) fields and in graph [`_path`](_path.md) sets. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

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
