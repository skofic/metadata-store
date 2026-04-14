# Blob item
<p style="color: #888; margin-top: -0.5em;"><code>_blob_item</code></p>

> A string identifying the subject or purpose of the blob content.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_blob` |
| [Local identifier](_lid.md) | `item` |
| [Global identifier](_gid.md) | `_blob_item` |
| [Official identifiers](_aid.md) | `item` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_blob",
  "_lid": "item",
  "_gid": "_blob_item",
  "_aid": [
    "item"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Blob item"
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
