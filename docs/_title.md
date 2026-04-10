# `_title`

**`_title`**

Title or label

**`_definition`**

A short label or name for the term. Expressed as plain unformatted text. Typically one to five words, with no punctuation.

**`_description`**

`_title` is the concise label by which a term is identified in user interfaces, lists, and headings. It is expressed as an [`_info_string`](_info_string.md) — a multilingual plain-text dictionary. Markdown formatting, HTML, links, and terminal punctuation should not appear in a title.

The title should be descriptive enough to identify the term in a list but short enough to serve as a label. For namespace or enumeration root terms, the title is typically a noun or noun phrase. For descriptor terms, it is the name of the field or variable the term represents.

**`_examples`**

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

---

**`_code`**

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

**`_data`**

```json
{
  "_typedef" : "_info_string"
}
```
