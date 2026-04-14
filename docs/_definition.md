# Definition
<p style="color: #888; margin-top: -0.5em;"><code>_definition</code></p>

> A self-contained definition of the term in plain text. Sufficient for an informed reader to understand the term without additional context. Typically two to four sentences.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `definition` |
| [Global identifier](_gid.md) | `_definition` |
| [Official identifiers](_aid.md) | `definition` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "definition",
  "_gid": "_definition",
  "_aid": [
    "definition"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Definition

**[Definition](_definition.md):** A self-contained definition of the term in plain text. Sufficient for an informed reader to understand the term without additional context. Typically two to four sentences.

**[Description](_description.md)**

`_definition` provides a compact, authoritative definition of what the term represents. It is expressed as an [`_info_string`](_info_string.md) — a multilingual plain-text dictionary. Unlike [`_description`](_description.md), which may include formatting and links, `_definition` is always plain text; backtick formatting for identifiers is the only exception.

A good definition names the entity type, states the key attribute or constraint, and distinguishes the term from closely related terms. It should stand alone without requiring the reader to consult other properties.

**[Examples](_examples.md)**

A definition for a body weight descriptor:

```json
{
	"_definition": {
		"ISO_639_3_eng": "The total mass of a person's body measured at a specific point in time. Expressed in kilograms. Used to monitor health status and calculate body mass index."
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Definition"
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

**Shape:** [Type definition](_typedef.md): [Multilingual plain text string](_info_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef": "_info_string"
}
```

</details>
