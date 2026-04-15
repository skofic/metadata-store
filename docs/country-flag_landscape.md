# Country flag — landscape
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>country-flag_landscape</code></p>

> Handle to the blob document containing the landscape (4:3) SVG flag image for a country or territory.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Country flag](country-flag.md) |
| [Local identifier](_lid.md) | `landscape` |
| [Global identifier](_gid.md) | `country-flag_landscape` |
| [Official identifiers](_aid.md) | `landscape` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "landscape"
  ],
  "_gid" : "country-flag_landscape",
  "_lid" : "landscape",
  "_nid" : "country-flag"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Country flag — landscape

**[Definition](_definition.md):** Handle to the blob document containing the landscape (4:3) SVG flag image for a country or territory.

**[Description](_description.md)**

Points to a document in the blob collection whose [`_blob_kind`](_blob_kind.md) is [`_media_landscape`](_media_landscape.md) and [`_blob_type`](_blob_type.md) is [`_text_SVG`](_text_SVG.md). The handle takes the form `blob/<key>` where `<key>` is an MD5 hash of the blob's composite identifier.

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
    "ISO_639_3_eng" : "Country flag — landscape"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Document handle](_handle.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_handle" : {

    }
  }
}
```

</details>
