# `_examples`

**`_title`**

Examples

**`_definition`**

Usage examples for the term. Expressed as formatted text. Typically includes JSON code blocks, sample values, or worked examples illustrating how the term is used in practice.

**`_description`**

`_examples` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It complements [`_description`](_description.md) by showing concrete instances rather than abstract explanations.

For descriptor terms, examples typically show the term used as a JSON property inside a containing structure. For enumeration terms, examples show the term as a valid value within a controlled vocabulary. Code blocks use fenced Markdown syntax with a language tag such as ` ```json ` or ` ```aql `.

**`_examples`**

An `_examples` entry showing a JSON usage example:

```json
{
	"_examples": {
		"ISO_639_3_eng": "A floating-point weight in kilograms:\n\n```json\n{\n\t\"_data\": {\n\t\t\"_scalar\": {\n\t\t\t\"_number_float\": {\n\t\t\t\t\"_unit\": \"_unit_weight_kg\"\n\t\t\t}\n\t\t}\n\t}\n}\n```"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "examples"
  ],
  "_gid" : "_examples",
  "_lid" : "examples",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_typedef" : "_info_text"
}
```
