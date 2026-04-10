# `_text_SVG`

**`_title`**

SVG

**`_definition`**

The scalar data type for SVG image markup stored as a string. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

**`_description`**

`_text_SVG` declares that the value is an [SVG](https://en.wikipedia.org/wiki/SVG) image encoded as a string. No companion properties apply — the type itself defines the format. A sub-type of [`_text`](_text.md). Non-comparable; cannot appear in sets or as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_text_SVG": {}
	}
}
```

Stored value example:

```xml
<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100">
  <circle cx="50" cy="50" r="40" fill="steelblue"/>
</svg>
```

---

**`_code`**

```json
{
  "_aid" : [
    "SVG"
  ],
  "_gid" : "_text_SVG",
  "_lid" : "SVG",
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
