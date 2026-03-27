# `_type_string_Markdown`

**`_title`**

Markdown

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for Markdown-formatted text. The value is a plain UTF-8 string containing Markdown syntax, intended to be rendered by a Markdown processor before display.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_Markdown`, the descriptor value is a UTF-8 string containing standard Markdown syntax — headings, lists, links, fenced code blocks, and so on. The dictionary itself uses Markdown in the [`_description`](_description.md), [`_examples`](_examples.md), and [`_notes`](_notes.md) properties of the [`_info`](_info.md) section.

No companion properties are applicable — the Markdown format is self-defining.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_Markdown"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "Markdown"
  ],
  "_gid" : "_type_string_Markdown",
  "_lid" : "Markdown",
  "_nid" : "_type_string"
}
```
