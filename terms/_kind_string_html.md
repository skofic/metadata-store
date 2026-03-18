# `_kind_string_html`

**`_title`**

HTML

**`_definition`**

An enumeration element indicating that the string value is HTML-formatted text. The value is a plain UTF-8 string containing HTML markup and is intended to be rendered by a browser or HTML processor before display.

**`_description`**

`_kind_string_html` qualifies a [`_type_string`](_type_string.md) scalar as HTML text. The stored value is a UTF-8 string containing valid HTML markup. It is used when richer formatting than Markdown supports is required — for example, embedded tables, custom attributes, or inline styles.

When this qualifier is present, `_regexp` is not applicable.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_html"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "html"
  ],
  "_gid" : "_kind_string_html",
  "_lid" : "html",
  "_nid" : "_kind_string"
}
```
