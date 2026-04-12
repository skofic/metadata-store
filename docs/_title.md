# Title
<p style="color: #888; margin-top: -0.5em;"><code>_title</code></p>

> A short label or name for the term. Expressed as plain unformatted text. Typically one to five words, with no punctuation.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `title` |
| [Global identifier](_gid.md) | `_title` |
| [Official identifiers](_aid.md) | `title` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "title"
  ],
  "_gid" : "_title",
  "_lid" : "title",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Title

**[Definition](_definition.md):** A short label or name for the term. Expressed as plain unformatted text. Typically one to five words, with no punctuation.

**[Description](_description.md)**

`_title` is the concise label by which a term is identified in user interfaces, lists, and headings. It is expressed as an [`_info_string`](_info_string.md) — a multilingual plain-text dictionary. Markdown formatting, HTML, links, and terminal punctuation should not appear in a title.

The title should be descriptive enough to identify the term in a list but short enough to serve as a label. For namespace or enumeration root terms, the title is typically a noun or noun phrase. For descriptor terms, it is the name of the field or variable the term represents.

**[Examples](_examples.md)**

A multilingual title for a body weight descriptor:

```json
{
	"_title": {
		"ISO_639_3_eng": "Body weight",
		"ISO_639_3_ita": "Peso corporeo",
		"ISO_639_3_fra": "Poids corporel"
	}
}
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
    "ISO_639_3_eng" : "Title"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Multilingual plain text](_info_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_info_string"
}
```

</details>
