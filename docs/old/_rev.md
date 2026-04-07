# `_rev`

**`_title`**

Document revision

**`_definition`**

The internal revision token of a document, assigned and updated by the database each time the document is modified. It is an opaque string used for optimistic concurrency control and is fully managed by the database.

**`_description`**

The document revision is an opaque string assigned and updated by ArangoDB each time a document is modified. It is used for optimistic concurrency control: a client may supply the current `_rev` value when updating a document to ensure no concurrent modification has occurred since the document was last read. If the supplied revision does not match the stored one, the update is rejected.

Users can read this value but cannot set or modify it — it is entirely managed by the database.

---

**`_code`**

```json
{
  "_aid" : [
    "rev"
  ],
  "_gid" : "_rev",
  "_lid" : "rev",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_string"
  }
}
```
