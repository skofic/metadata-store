# `_usage`

**`_title`**

Usage

**`_definition`**

Explains how and why the value represented by the term is used in a dataset or application. Expressed as formatted text.

**`_description`**

`_usage` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It documents the intended application context: which datasets use the term, which workflows depend on it, and any conventions around when to include or omit it.

`_usage` differs from [`_description`](_description.md) in focus: `_description` explains what the term *is*; `_usage` explains how it is *applied* in practice.

**`_examples`**

A usage note for a body weight descriptor:

```json
{
	"_usage": {
		"ISO_639_3_eng": "Used in nutritional surveys and clinical records to track changes over time. Always pair with a measurement date descriptor. Do not use for cargo or object weight — use the generic weight descriptor instead."
	}
}
```

---

**`_code`**

```json
{
  "_gid": "_usage",
  "_lid": "usage",
  "_nid": "",
  "_aid": ["usage"]
}
```

**`_data`**

```json
{
  "_typedef": "_info_text"
}
```
