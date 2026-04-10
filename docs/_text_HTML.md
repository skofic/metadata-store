# `_text_HTML`

**`_title`**

HTML

**`_definition`**

The scalar data type for HTML-formatted text. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

**`_description`**

`_text_HTML` declares that the value is an [HTML](https://en.wikipedia.org/wiki/HTML) string. No companion properties apply — the type itself defines the format. A sub-type of [`_text`](_text.md). Non-comparable; cannot appear in sets or as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_text_HTML": {}
	}
}
```

Stored value example:

```html
<p>A paragraph with <strong>bold</strong> and <em>italic</em> text.</p>
<ul>
  <li>Item one</li>
  <li>Item two</li>
</ul>
```

---

**`_code`**

```json
{
  "_aid" : [
    "HTML"
  ],
  "_gid" : "_text_HTML",
  "_lid" : "HTML",
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
