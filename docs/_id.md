# `_id`

**`_title`**

Document handle

**`_definition`**

The ArangoDB system property that uniquely identifies a document within the entire database. Its value is the concatenation of the collection name and the document key separated by a forward slash (`<collection>/<key>`). Assigned automatically by ArangoDB; locked and immutable once set.

**`_description`**

`_id` is a built-in ArangoDB property automatically assigned to every document on insertion. It identifies the document globally across all collections in the database. The format is `<collection>/<key>`, for example `terms/_scalar` or `terms/ISO_639_3_eng`.

In the dictionary, `_id` values appear wherever a document reference is needed outside the terms collection itself — as the `_from` and `_to` endpoints of edge documents, and as entries in the `_path` set of edges. The [`_handle`](_handle.md) scalar type is used in descriptors that store `_id` values.

The field is system-managed: ArangoDB writes it at insertion and it cannot be changed thereafter. It is listed in `_locked` on the [`_term`](_term.md) schema.

---

**`_code`**

```json
{
  "_aid" : [
    "id"
  ],
  "_gid" : "_id",
  "_lid" : "id",
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
