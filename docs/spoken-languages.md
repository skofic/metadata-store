# Spoken languages
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>spoken-languages</code></p>

> The set of languages spoken in a country or territory, identified by their ISO 639-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `spoken-languages` |
| [Global identifier](_gid.md) | `spoken-languages` |
| [Official identifiers](_aid.md) | `spoken-languages` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "spoken-languages"
  ],
  "_gid" : "spoken-languages",
  "_lid" : "spoken-languages"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Spoken languages"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumerated value](_enum.md) ()

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_enum" : {
      "_enums" : "ISO_639_3"
    }
  }
}
```

</details>
