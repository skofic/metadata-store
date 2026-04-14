# International Direct Dialing codes
<p style="color: #888; margin-top: -0.5em;"><code>IDD_codes</code></p>

> The set of international telephone calling codes assigned to a country or territory by the ITU.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `IDD` |
| [Local identifier](_lid.md) | `codes` |
| [Global identifier](_gid.md) | `IDD_codes` |
| [Official identifiers](_aid.md) | `codes` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "IDD",
  "_lid": "codes",
  "_gid": "IDD_codes",
  "_aid": [
    "codes"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** International Direct Dialing codes

**[Definition](_definition.md):** The set of international telephone calling codes assigned to a country or territory by the ITU.

**[Description](_description.md)**

Values are numeric strings prefixed with `+` (e.g. `+39` for Italy, `+1` for the United States). A country may have more than one calling code; equally, a single calling code may be shared among multiple countries or territories. The set contains all codes that can reach the country when dialling internationally.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "International Direct Dialing codes"
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
