# Top-level domain codes
<p style="color: #888; margin-top: -0.5em;"><code>TLD_codes</code></p>

> The set of Internet country-code top-level domain codes assigned to a country or territory by IANA.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `TLD` |
| [Local identifier](_lid.md) | `codes` |
| [Global identifier](_gid.md) | `TLD_codes` |
| [Official identifiers](_aid.md) | `codes` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "TLD",
  "_lid": "codes",
  "_gid": "TLD_codes",
  "_aid": [
    "codes"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Top-level domain codes

**[Definition](_definition.md):** The set of Internet country-code top-level domain codes assigned to a country or territory by IANA.

**[Description](_description.md)**

Most countries have a single ccTLD derived from their ISO 3166-1 alpha-2 code (e.g. `.it`, `.de`). Some territories hold multiple delegated codes (e.g. the United Kingdom has both `.uk` and `.gb`). Values are lowercase ASCII strings beginning with a period.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Top-level domain codes"
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

**Shape:** [Set](_set.md) of [Generic string](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_string": {}
  }
}
```

</details>
