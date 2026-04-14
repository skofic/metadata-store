# Hostname
<p style="color: #888; margin-top: -0.5em;"><code>_string_Hostname</code></p>

> The scalar data type for internet hostnames. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `Hostname` |
| [Global identifier](_gid.md) | `_string_Hostname` |
| [Official identifiers](_aid.md) | `Hostname` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "Hostname",
  "_gid": "_string_Hostname",
  "_aid": [
    "Hostname"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hostname

**[Definition](_definition.md):** The scalar data type for internet hostnames. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**[Description](_description.md)**

`_string_Hostname` declares that the value is an [internet hostname](https://en.wikipedia.org/wiki/Hostname). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_Hostname": {}
	}
}
```

Stored values: `"www.example.com"`, `"localhost"`, `"mail.server.org"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Hostname"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {}
  }
}
```

</details>
