# Currencies
<p style="color: #888; margin-top: -0.5em;"><code>currencies</code></p>

> The set of official currencies in circulation in a country or territory, identified by their ISO 4217 alpha-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none — top-level namespace) |
| [Local identifier](_lid.md) | `currencies` |
| [Global identifier](_gid.md) | `currencies` |
| [Official identifiers](_aid.md) | `currencies` |

<details>
<summary>JSON</summary>

```json
{
  "_lid": "currencies",
  "_gid": "currencies",
  "_aid": [
    "currencies"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Currencies

**[Definition](_definition.md):** The set of official currencies in circulation in a country or territory, identified by their ISO 4217 alpha-3 codes.

**[Description](_description.md)**

Most countries use a single national currency, but some use multiple (e.g. Panama uses both the Panamanian balboa and the US dollar). Values are enumeration elements from the [`ISO_4217`](ISO_4217.md) controlled vocabulary.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Currencies"
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

**Shape:** [Set](_set.md) of [Enumerated value](_enum.md) from vocabulary `ISO_4217`

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_enum": {
      "_enums": "ISO_4217"
    }
  }
}
```

</details>
