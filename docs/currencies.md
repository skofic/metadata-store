# Currencies
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>currencies</code></p>

> The set of official currencies in circulation in a country or territory, identified by their ISO 4217 alpha-3 codes.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (none) |
| [Local identifier](_lid.md) | `currencies` |
| [Global identifier](_gid.md) | `currencies` |
| [Official identifiers](_aid.md) | `currencies` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "currencies"
  ],
  "_gid" : "currencies",
  "_lid" : "currencies"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Currencies"
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
      "_enums" : "ISO_4217"
    }
  }
}
```

</details>
