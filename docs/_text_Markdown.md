# Markdown
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_text_Markdown</code></p>

> The scalar data type for Markdown-formatted text, rendered in frontends using a Markdown parser. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Text](_text.md) |
| [Local identifier](_lid.md) | `Markdown` |
| [Global identifier](_gid.md) | `_text_Markdown` |
| [Official identifiers](_aid.md) | `Markdown` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "Markdown"
  ],
  "_gid" : "_text_Markdown",
  "_lid" : "Markdown",
  "_nid" : "_text"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Markdown"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
