# `_text`

**`_title`**

Text

**`_definition`**

The scalar data type for long-form, non-indexable text content. Not suitable for use as a database tag, set element, or dictionary key. Parent type of `_text_HTML`, `_text_Markdown`, and `_text_SVG`, which declare the markup format.

**`_description`**

`_text` is the parent type for long-form text content. Unlike [`_string`](_string.md), text values are expected to be lengthy — narrative descriptions, formatted markup, or embedded images — and are not suitable for indexing, sorting, or use as dictionary keys. The sub-types [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), and [`_text_SVG`](_text_SVG.md) declare the markup format. No companion properties apply — the format is encoded in the type key itself. Non-comparable; cannot appear in sets or as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_text": {}
	}
}
```

A stored `_text` value is typically a paragraph or longer narrative — for example, a full definition, a methodology description, or a multi-page report excerpt. Unlike `_string`, it is not suitable for indexing or use as a tag.

---

**`_code`**

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

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
