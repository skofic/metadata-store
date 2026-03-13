# `_rev`

**`_title`**

Document revision

**`_definition`**

The internal revision token of a document, assigned and updated by the database each time the document is modified. It is an opaque string used for optimistic concurrency control and is fully managed by the database.

**`_description`**

The *document revision* is an opaque string assigned and updated by [ArangoDB](https://www.arangodb.com) each time a document is modified. It is used internally for optimistic concurrency control — clients may supply the current `_rev` value when updating a document to ensure no concurrent modification has occurred since they last read it. Users can read this value but cannot set or modify it.

---

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_string"
  }
}
```
