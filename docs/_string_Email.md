# Email address
<p style="color: #888; margin-top: -0.5em;"><code>_string_Email</code></p>

> The scalar data type for email addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `Email` |
| [Global identifier](_gid.md) | `_string_Email` |
| [Official identifiers](_aid.md) | `Email` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "Email",
  "_gid": "_string_Email",
  "_aid": [
    "Email"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Email address

**[Definition](_definition.md):** The scalar data type for email addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**[Description](_description.md)**

`_string_Email` declares that the value is an email address. The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_Email": {}
	}
}
```

Stored values: `"user@example.com"`, `"john.doe+tag@company.org"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Email address"
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
