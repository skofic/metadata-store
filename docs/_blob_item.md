# Blob item
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_blob_item</code></p>

> A string identifying the subject or purpose of the blob content.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Blob](_blob.md) |
| [Local identifier](_lid.md) | `item` |
| [Global identifier](_gid.md) | `_blob_item` |
| [Official identifiers](_aid.md) | `item` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "item"
  ],
  "_gid" : "_blob_item",
  "_lid" : "item",
  "_nid" : "_blob"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Blob item

**[Definition](_definition.md):** A string identifying the subject or purpose of the blob content.

**[Description](_description.md)**

Together with [`_blob_type`](_blob_type.md), [`_blob_kind`](_blob_kind.md), and [`_blob_identifier`](_blob_identifier.md), this field forms the composite key that uniquely identifies a blob document. Example value: `"flag"` for national flag images.

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
    "ISO_639_3_eng" : "Blob item"
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
