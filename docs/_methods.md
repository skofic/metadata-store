# Methods
<p style="color: #888; margin-top: -0.5em;"><code>_methods</code></p>

> Documentation of the measurement conditions, methods, and protocols required to produce a valid value for the term. Expressed as formatted text.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `methods` |
| [Global identifier](_gid.md) | `_methods` |
| [Official identifiers](_aid.md) | `methods` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "methods",
  "_gid": "_methods",
  "_aid": [
    "methods"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Methods

**[Definition](_definition.md):** Documentation of the measurement conditions, methods, and protocols required to produce a valid value for the term. Expressed as formatted text.

**[Description](_description.md)**

`_methods` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It is used for descriptor terms that represent measured or observed quantities where the value is only meaningful in the context of a specific measurement protocol — for example, body weight measured on an empty stomach, or blood pressure recorded after five minutes of rest.

When measurement conditions affect the comparability of values across datasets, `_methods` should be provided so that data consumers understand under what circumstances the value was obtained.

**[Examples](_examples.md)**

A methods entry for a body weight measurement:

```json
{
	"_methods": {
		"ISO_639_3_eng": "Measure in the morning after an overnight fast, with the subject standing upright on a calibrated scale, wearing minimal clothing. Record to the nearest 0.1 kg."
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Methods"
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

**Shape:** [Type definition](_typedef.md): `_info_text`

<details>
<summary>JSON</summary>

```json
{
  "_typedef": "_info_text"
}
```

</details>
