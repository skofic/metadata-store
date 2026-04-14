# SVG
<p style="color: #888; margin-top: -0.5em;"><code>_text_SVG</code></p>

> The scalar data type for SVG image markup stored as a string. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_text` |
| [Local identifier](_lid.md) | `SVG` |
| [Global identifier](_gid.md) | `_text_SVG` |
| [Official identifiers](_aid.md) | `SVG` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_text",
  "_lid": "SVG",
  "_gid": "_text_SVG",
  "_aid": [
    "SVG"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** SVG

**[Definition](_definition.md):** The scalar data type for SVG image markup stored as a string. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_text`.

**[Description](_description.md)**

`_text_SVG` declares that the value is an [SVG](https://en.wikipedia.org/wiki/SVG) image encoded as a string. No companion properties apply — the type itself defines the format. A sub-type of [`_text`](_text.md). Non-comparable; cannot appear in sets or as dictionary keys.

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "SVG"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {}
  }
}
```

</details>
