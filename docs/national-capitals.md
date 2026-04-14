# National capitals
<p style="color: #888; margin-top: -0.5em;"><code>national-capitals</code></p>

> The capital city or cities of a country, expressed as an array of multilingual plain-text name strings.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none — top-level namespace) |
| [Local identifier](_lid.md) | `national-capitals` |
| [Global identifier](_gid.md) | `national-capitals` |
| [Official identifiers](_aid.md) | `national-capitals` |

<details>
<summary>JSON</summary>

```json
{
  "_lid": "national-capitals",
  "_gid": "national-capitals",
  "_aid": [
    "national-capitals"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** National capitals

**[Definition](_definition.md):** The capital city or cities of a country, expressed as an array of multilingual plain-text name strings.

**[Description](_description.md)**

Some countries have multiple capitals (e.g. South Africa has three: Pretoria, Cape Town, and Bloemfontein). Each capital is represented as a multilingual dictionary mapping ISO 639-3 language codes to the capital's name in that language. The value type is the [`_info_strings`](_info_strings.md) typedef — an array of such dictionaries.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "National capitals"
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

**Shape:** [Type definition](_typedef.md): [Multilingual plain text strings](_info_strings.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef": "_info_strings"
}
```

</details>
