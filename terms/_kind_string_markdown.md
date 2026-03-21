# `_kind_string_Markdown`

**`_title`**

Markdown

**`_definition`**

An enumeration element indicating that the string value is Markdown-formatted text. The value is a plain UTF-8 string containing Markdown syntax and is intended to be rendered by a Markdown processor before display.

**`_description`**

`_kind_string_Markdown` qualifies a [`_type_string`](_type_string.md) scalar as Markdown text. The stored value is a UTF-8 string containing standard Markdown syntax — headings, lists, links, fenced code blocks, and so on. The dictionary itself uses Markdown in the `_description`, `_examples`, and `_notes` properties of the [`_info`](_info.md) section.

When this qualifier is present, `_regexp` is not applicable — the Markdown format is self-defining.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_Markdown"
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
  "_gid" : "_kind_string_Markdown",
  "_lid" : "Markdown",
  "_nid" : "_kind_string"
}
```
