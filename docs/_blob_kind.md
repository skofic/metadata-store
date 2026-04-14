# Blob kind
<p style="color: #888; margin-top: -0.5em;"><code>_blob_kind</code></p>

> The presentation variant of the blob, expressed as an enumeration element.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_blob` |
| [Local identifier](_lid.md) | `kind` |
| [Global identifier](_gid.md) | `_blob_kind` |
| [Official identifiers](_aid.md) | `kind` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_blob",
  "_lid": "kind",
  "_gid": "_blob_kind",
  "_aid": [
    "kind"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob kind

**[Definition](_definition.md):** The presentation variant of the blob, expressed as an enumeration element.

**[Description](_description.md)**

Distinguishes between different versions of the same content — for example, a flag image in landscape (4:3) versus square (1:1) aspect ratio. Values are drawn from the `_blob_kind` controlled vocabulary, currently comprising [`_media_landscape`](_media_landscape.md) and [`_media_square`](_media_square.md).

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Blob kind"
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

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) from vocabulary `_blob_kind`

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_enum": {
      "_enums": "_blob_kind"
    }
  }
}
```

</details>
