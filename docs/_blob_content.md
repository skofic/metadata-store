# Blob content
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob_content</code></p>

> The text payload of the blob document.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Blob](_blob.md) |
| [Local identifier](_lid.md) | `content` |
| [Global identifier](_gid.md) | `_blob_content` |
| [Official identifiers](_aid.md) | `content` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "content"
  ],
  "_gid" : "_blob_content",
  "_lid" : "content",
  "_nid" : "_blob"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Blob content"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Text](_text.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_text" : {

    }
  }
}
```

</details>
