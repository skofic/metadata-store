# Description
<p style="color: #888; margin-top: -0.5em;"><code>_description</code></p>

> A full description of the term aimed at a general audience. Expressed as formatted text. Covers what the term is, how it is used, and why it exists. May include links to other terms, external references, and code blocks.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `description` |
| [Global identifier](_gid.md) | `_description` |
| [Official identifiers](_aid.md) | `description` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "description"
  ],
  "_gid" : "_description",
  "_lid" : "description",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Description

**[Definition](_definition.md):** A full description of the term aimed at a general audience. Expressed as formatted text. Covers what the term is, how it is used, and why it exists. May include links to other terms, external references, and code blocks.

**[Description](_description.md)**

`_description` is the primary documentation field for a term. It is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. Unlike [`_definition`](_definition.md), which is plain text and compact, `_description` may span multiple paragraphs and include lists, tables, fenced code blocks, and cross-reference links to other term cards.

The target audience is an informed non-expert: someone familiar with the domain but not necessarily with the design decisions behind the dictionary. A good description explains what the term is, how it is used in practice, and why the design choices were made.

**[Examples](_examples.md)**

A description using Markdown formatting and a link to another term card:

```json
{
	"_description": {
		"ISO_639_3_eng": "Body weight is recorded in kilograms to two decimal places. See [`_unit_weight_kg`](_unit_weight_kg.md) for the unit definition.\n\nMeasurement must follow the protocol defined in [`_methods`](_methods.md)."
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Description"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Multilingual formatted text](_info_text.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_info_text"
}
```

</details>
