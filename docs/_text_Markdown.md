# Markdown
<p style="color: #888; margin-top: -0.5em;"><code>_text_Markdown</code></p>

> The scalar data type for Markdown-formatted text, rendered in frontends using a Markdown parser. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_text` |
| [Local identifier](_lid.md) | `Markdown` |
| [Global identifier](_gid.md) | `_text_Markdown` |
| [Official identifiers](_aid.md) | `Markdown` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_text",
  "_lid": "Markdown",
  "_gid": "_text_Markdown",
  "_aid": [
    "Markdown"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Markdown

**[Definition](_definition.md):** The scalar data type for Markdown-formatted text, rendered in frontends using a Markdown parser. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

**[Description](_description.md)**

`_text_Markdown` declares that the value is a [Markdown](https://en.wikipedia.org/wiki/Markdown) string. No companion properties apply — the type itself defines the format. A sub-type of [`_text`](_text.md). Non-comparable; cannot appear in sets or as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_text_Markdown": {}
	}
}
```

Stored value example:

```
# Title

A paragraph with **bold** and *italic* text.

- Item one
- Item two
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Markdown"
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
