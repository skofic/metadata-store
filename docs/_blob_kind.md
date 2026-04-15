# Blob kind
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob_kind</code></p>

> The presentation variant of the blob, expressed as an enumeration element.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Blob](_blob.md) |
| [Local identifier](_lid.md) | `kind` |
| [Global identifier](_gid.md) | `_blob_kind` |
| [Official identifiers](_aid.md) | `kind` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "kind"
  ],
  "_gid" : "_blob_kind",
  "_lid" : "kind",
  "_nid" : "_blob"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Blob kind"
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
      "_enums" : "_blob_kind"
    }
  }
}
```

</details>
