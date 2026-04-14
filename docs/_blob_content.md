# Blob content
<p style="color: #888; margin-top: -0.5em;"><code>_blob_content</code></p>

> The text payload of the blob document.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_blob` |
| [Local identifier](_lid.md) | `content` |
| [Global identifier](_gid.md) | `_blob_content` |
| [Official identifiers](_aid.md) | `content` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_blob",
  "_lid": "content",
  "_gid": "_blob_content",
  "_aid": [
    "content"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob content

**[Definition](_definition.md):** The text payload of the blob document.

**[Description](_description.md)**

Stores the actual content as a generic text value. The format is declared by [`_blob_type`](_blob_type.md) and should be used by the application to parse or render the content correctly. For SVG flag images, this field holds the raw SVG markup.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Blob content"
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

**Shape:** [Scalar](_scalar.md) — [Plain text](_text.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_text": {}
  }
}
```

</details>
