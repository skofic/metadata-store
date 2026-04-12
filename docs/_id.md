# Document handle
<p style="color: #888; margin-top: -0.5em;"><code>_id</code></p>

> The ArangoDB system property that uniquely identifies a document within the entire database. Its value is the concatenation of the collection name and the document key separated by a forward slash (`<collection>/<key>`). Assigned automatically by ArangoDB; locked and immutable once set.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `id` |
| [Global identifier](_gid.md) | `_id` |
| [Official identifiers](_aid.md) | `id` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Document handle

**[Definition](_definition.md):** The ArangoDB system property that uniquely identifies a document within the entire database. Its value is the concatenation of the collection name and the document key separated by a forward slash (`<collection>/<key>`). Assigned automatically by ArangoDB; locked and immutable once set.

**[Description](_description.md)**

`_id` is a built-in ArangoDB property automatically assigned to every document on insertion. It identifies the document globally across all collections in the database. The format is `<collection>/<key>`, for example `terms/_scalar` or `terms/ISO_639_3_eng`.

In the dictionary, `_id` values appear wherever a document reference is needed outside the terms collection itself — as the `_from` and `_to` endpoints of edge documents, and as entries in the `_path` set of edges. The [`_handle`](_handle.md) scalar type is used in descriptors that store `_id` values.

The field is system-managed: ArangoDB writes it at insertion and it cannot be changed thereafter. It is listed in `_locked` on the [`_term`](_term.md) schema.

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Document handle"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Document handle](_handle.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_handle" : {

    }
  }
}
```

</details>
