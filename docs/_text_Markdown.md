# `_text_Markdown`

**`_title`**

Markdown

**`_definition`**

The scalar data type for Markdown-formatted text, rendered in frontends using a Markdown parser. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

**`_description`**

`_text_Markdown` declares that the value is a [Markdown](https://en.wikipedia.org/wiki/Markdown) string. No companion properties apply — the type itself defines the format. A sub-type of [`_text`](_text.md). Non-comparable; cannot appear in sets or as dictionary keys.

**`_examples`**

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

---

**`_code`**

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

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
