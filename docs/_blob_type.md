# Blob type
<p style="color: #888; margin-top: -0.5em;"><code>_blob_type</code></p>

> The data type of the blob content, expressed as the _gid of a scalar type descriptor term.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_blob` |
| [Local identifier](_lid.md) | `type` |
| [Global identifier](_gid.md) | `_blob_type` |
| [Official identifiers](_aid.md) | `type` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_blob",
  "_lid": "type",
  "_gid": "_blob_type",
  "_aid": [
    "type"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob type

**[Definition](_definition.md):** The data type of the blob content, expressed as the _gid of a scalar type descriptor term.

**[Description](_description.md)**

Determines how the [`_blob_content`](_blob_content.md) field should be interpreted. Valid values are drawn from the `_blob_type` controlled vocabulary, whose elements are scalar type terms from the core dictionary: [`_text`](_text.md), [`_text_SVG`](_text_SVG.md), [`_text_HTML`](_text_HTML.md), and [`_text_Markdown`](_text_Markdown.md).

Example value: `"_text_SVG"` for an SVG image stored as text.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Blob type"
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

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) from vocabulary `_blob_type`

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_enum": {
      "_enums": "_blob_type"
    }
  }
}
```

</details>
