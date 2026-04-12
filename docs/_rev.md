# `_rev`

**`_title`**

Document revision

**`_definition`**

The ArangoDB system property containing the internal revision token of the document. Updated automatically by ArangoDB on every write operation. Used for optimistic locking and conflict detection.

**`_description`**

`_rev` is a built-in ArangoDB property automatically maintained by the database. It is an opaque string that changes each time the document is modified. By including the last-known `_rev` in an update or replace operation, the caller can ensure the operation is rejected if another process has modified the document in the meantime — this is the standard ArangoDB mechanism for optimistic concurrency control.

The field is fully managed by ArangoDB and cannot be set by the user. It is listed in `_locked` on the [`_term`](_term.md) schema.

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
    "_string" : {

    }
  }
}
```
