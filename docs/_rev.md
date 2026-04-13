# Document revision
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_rev</code></p>

> The ArangoDB system property containing the internal revision token of the document. Updated automatically by ArangoDB on every write operation. Used for optimistic locking and conflict detection.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `rev` |
| [Global identifier](_gid.md) | `_rev` |
| [Official identifiers](_aid.md) | `rev` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Document revision

**[Definition](_definition.md):** The ArangoDB system property containing the internal revision token of the document. Updated automatically by ArangoDB on every write operation. Used for optimistic locking and conflict detection.

**[Description](_description.md)**

`_rev` is a built-in ArangoDB property automatically maintained by the database. It is an opaque string that changes each time the document is modified. By including the last-known `_rev` in an update or replace operation, the caller can ensure the operation is rejected if another process has modified the document in the meantime — this is the standard ArangoDB mechanism for optimistic concurrency control.

The field is fully managed by ArangoDB and cannot be set by the user. It is listed in `_locked` on the [`_term`](_term.md) schema.

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
    "ISO_639_3_eng" : "Document revision"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```

</details>
