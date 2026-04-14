# National borders
<p style="color: #888; margin-top: -0.5em;"><code>national-borders</code></p>

> The set of countries that share a land border with a given country, identified by their ISO 3166-1 alpha-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none — top-level namespace) |
| [Local identifier](_lid.md) | `national-borders` |
| [Global identifier](_gid.md) | `national-borders` |
| [Official identifiers](_aid.md) | `national-borders` |

<details>
<summary>JSON</summary>

```json
{
  "_lid": "national-borders",
  "_gid": "national-borders",
  "_aid": [
    "national-borders"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** National borders

**[Definition](_definition.md):** The set of countries that share a land border with a given country, identified by their ISO 3166-1 alpha-3 codes.

**[Description](_description.md)**

Island nations and some countries separated by water from all neighbours will have an empty set. Values are enumeration elements from the [`ISO_3166_1`](ISO_3166_1.md) controlled vocabulary.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "National borders"
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

**Shape:** [Set](_set.md) of [Enumerated value](_enum.md) from vocabulary `ISO_3166_1`

<details>
<summary>JSON</summary>

```json
{
  "_set": {
    "_enum": {
      "_enums": "ISO_3166_1"
    }
  }
}
```

</details>
