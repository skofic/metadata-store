# Spoken languages
<p style="color: #888; margin-top: -0.5em;"><code>spoken-languages</code></p>

> The set of languages spoken in a country or territory, identified by their ISO 639-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none — top-level namespace) |
| [Local identifier](_lid.md) | `spoken-languages` |
| [Global identifier](_gid.md) | `spoken-languages` |
| [Official identifiers](_aid.md) | `spoken-languages` |

<details>
<summary>JSON</summary>

```json
{
  "_lid": "spoken-languages",
  "_gid": "spoken-languages",
  "_aid": [
    "spoken-languages"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Spoken languages

**[Definition](_definition.md):** The set of languages spoken in a country or territory, identified by their ISO 639-3 codes.

**[Description](_description.md)**

Includes official, national, and widely spoken languages. Values are enumeration elements from the [`ISO_639_3`](ISO_639_3.md) controlled vocabulary. A country may appear with only its major languages or with a comprehensive set depending on the data source.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Spoken languages"
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

**Shape:** [Set](_set.md) of [Enumerated value](_enum.md) from vocabulary `ISO_639_3`

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_enum": {
      "_enums": "ISO_639_3"
    }
  }
}
```

</details>
