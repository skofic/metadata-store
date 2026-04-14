# Blob identifier
<p style="color: #888; margin-top: -0.5em;"><code>_blob_identifier</code></p>

> A string that, combined with item, type, and kind, uniquely identifies the subject of the blob.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_blob` |
| [Local identifier](_lid.md) | `identifier` |
| [Global identifier](_gid.md) | `_blob_identifier` |
| [Official identifiers](_aid.md) | `identifier` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_blob",
  "_lid": "identifier",
  "_gid": "_blob_identifier",
  "_aid": [
    "identifier"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob identifier

**[Definition](_definition.md):** A string that, combined with item, type, and kind, uniquely identifies the subject of the blob.

**[Description](_description.md)**

The four fields `_blob_item`, `_blob_type`, `_blob_kind`, and `_blob_identifier` together form the composite key from which the document's `_key` is derived (as an MD5 hash of their concatenation). This field carries the subject-specific part of that key — for example, the ISO 3166-1 alpha-2 code (`"it"`) for a country flag blob.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Blob identifier"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Generic string](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_string": {}
  }
}
```

</details>
