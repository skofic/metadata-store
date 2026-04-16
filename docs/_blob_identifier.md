# Blob identifier
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob_identifier</code></p>

> A string that, combined with item, type, and kind, uniquely identifies the subject of the blob.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Blob](_blob.md) |
| [Local identifier](_lid.md) | `identifier` |
| [Global identifier](_gid.md) | `_blob_identifier` |
| [Official identifiers](_aid.md) | `identifier` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "identifier"
  ],
  "_gid" : "_blob_identifier",
  "_lid" : "identifier",
  "_nid" : "_blob"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob identifier

**[Definition](_definition.md):** A string that, combined with item, type, and kind, uniquely identifies the subject of the blob.

**[Description](_description.md)**

The four fields [`_blob_item`](_blob_item.md), [`_blob_type`](_blob_type.md), [`_blob_kind`](_blob_kind.md), and `_blob_identifier` together form the composite key from which the document's [`_key`](_key.md) is derived (as an MD5 hash of their concatenation). This field carries the subject-specific part of that key — for example, the ISO 3166-1 alpha-2 code (`"it"`) for a country flag blob.

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
    "ISO_639_3_eng" : "Blob identifier"
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
