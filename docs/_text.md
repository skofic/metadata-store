# Text
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a> <a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_text</code></p>

> The scalar data type for long-form, non-indexable text content. Not suitable for use as a database tag, set element, or dictionary key. Parent type of `_text_HTML`, `_text_Markdown`, and `_text_SVG`, which declare the markup format.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `text` |
| [Global identifier](_gid.md) | `_text` |
| [Official identifiers](_aid.md) | `text` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "text"
  ],
  "_gid" : "_text",
  "_lid" : "text",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Text

**[Definition](_definition.md):** The scalar data type for long-form, non-indexable text content. Not suitable for use as a database tag, set element, or dictionary key. Parent type of `_text_HTML`, `_text_Markdown`, and `_text_SVG`, which declare the markup format.

**[Description](_description.md)**

`_text` is the parent type for long-form text content. Unlike [`_string`](_string.md), text values are expected to be lengthy — narrative descriptions, formatted markup, or embedded images — and are not suitable for indexing, sorting, or use as dictionary keys. The sub-types [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), and [`_text_SVG`](_text_SVG.md) declare the markup format. No companion properties apply — the format is encoded in the type key itself. Non-comparable; cannot appear in sets or as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_text": {}
	}
}
```

A stored `_text` value is typically a paragraph or longer narrative — for example, a full definition, a methodology description, or a multi-page report excerpt. Unlike [`_string`](_string.md), it is not suitable for indexing or use as a tag.

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
    "ISO_639_3_eng" : "Text"
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
