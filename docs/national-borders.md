# National borders
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>national-borders</code></p>

> The set of countries that share a land border with a given country, identified by their ISO 3166-1 alpha-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `national-borders` |
| [Global identifier](_gid.md) | `national-borders` |
| [Official identifiers](_aid.md) | `national-borders` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "national-borders"
  ],
  "_gid" : "national-borders",
  "_lid" : "national-borders"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "National borders"
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
      "_enums" : "ISO_3166_1"
    }
  }
}
```

</details>
