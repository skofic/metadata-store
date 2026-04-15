# Blob type
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob_type</code></p>

> The data type of the blob content, expressed as the _gid of a scalar type descriptor term.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Blob](_blob.md) |
| [Local identifier](_lid.md) | `type` |
| [Global identifier](_gid.md) | `_blob_type` |
| [Official identifiers](_aid.md) | `type` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_blob_type",
  "_lid" : "type",
  "_nid" : "_blob"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Blob type"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Enumerated value](_enum.md) ()

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_enum" : {
      "_enums" : "_blob_type"
    }
  }
}
```

</details>
