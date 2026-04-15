# Blob
<p><a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob</code></p>

> Namespace for blob collection document descriptors. A blob stores arbitrary text content alongside metadata fields that identify its purpose, format, and presentation variant.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `blob` |
| [Global identifier](_gid.md) | `_blob` |
| [Official identifiers](_aid.md) | `blob` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "blob"
  ],
  "_gid" : "_blob",
  "_lid" : "blob",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob

**[Definition](_definition.md):** Namespace for blob collection document descriptors. A blob stores arbitrary text content alongside metadata fields that identify its purpose, format, and presentation variant.

**[Description](_description.md)**

The blob collection is a general-purpose content store in the database, separate from the terms collection. Each blob document holds a text payload together with four metadata fields — [`_blob_item`](_blob_item.md), [`_blob_type`](_blob_type.md), [`_blob_kind`](_blob_kind.md), and [`_blob_identifier`](_blob_identifier.md) — that together uniquely identify the content. The document key is an MD5 hash of those four fields combined.

Terms reference blob documents via [`_handle`](_handle.md) properties in their [`_prop`](_prop.md) section, allowing any term to attach arbitrary content blobs without embedding large payloads in the term document itself.

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
    "ISO_639_3_eng" : "Blob"
  }
}
```

</details>
