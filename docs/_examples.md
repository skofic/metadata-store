# Examples
<p style="color: #888; margin-top: -0.5em;"><code>_examples</code></p>

> Usage examples for the term. Expressed as formatted text. Typically includes JSON code blocks, sample values, or worked examples illustrating how the term is used in practice.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `examples` |
| [Global identifier](_gid.md) | `_examples` |
| [Official identifiers](_aid.md) | `examples` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "examples",
  "_gid": "_examples",
  "_aid": [
    "examples"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Examples

**[Definition](_definition.md):** Usage examples for the term. Expressed as formatted text. Typically includes JSON code blocks, sample values, or worked examples illustrating how the term is used in practice.

**[Description](_description.md)**

`_examples` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It complements [`_description`](_description.md) by showing concrete instances rather than abstract explanations.

For descriptor terms, examples typically show the term used as a JSON property inside a containing structure. For enumeration terms, examples show the term as a valid value within a controlled vocabulary. Code blocks use fenced Markdown syntax with a language tag such as ` ```json ` or ` ```aql `.

**[Examples](_examples.md)**

An `_examples` entry showing a JSON usage example:

```json
{
	"_examples": {
		"ISO_639_3_eng": "A floating-point weight in kilograms:\n\n```json\n{\n\t\"_data\": {\n\t\t\"_scalar\": {\n\t\t\t\"_number_float\": {\n\t\t\t\t\"_unit\": \"_unit_weight_kg\"\n\t\t\t}\n\t\t}\n\t}\n}\n```"
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Examples"
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
