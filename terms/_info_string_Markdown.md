# `_info_string_Markdown`

**`_title`**

Multilingual Markdown String

**`_definition`**

A typedef term defining the structure of a multilingual Markdown or HTML string property. The value is a key/value dictionary in which each key is a language term `_gid` drawn from the ISO 639-3 vocabulary and each value is a Markdown or HTML string.

**`_description`**

[`_info_string_Markdown`](_info_string_Markdown.md) is a [typedef](_kind_term_typedef.md) used by the rich-text properties of the [`_info`](_info.md) section: [`_description`](_description.md), [`_examples`](_examples.md), [`_notes`](_notes.md), [`_citation`](_citation.md), [`_provider`](_provider.md), [`_url`](_url.md), and [`_methods`](_methods.md).

The structure is identical to [`_info_string`](_info_string.md) except that the values are **Markdown or HTML strings** rather than plain text. Markdown formatting — links, emphasis, headings, lists, and fenced code blocks — is fully supported and rendered by the frontend.

```json
{
	"ISO_639_3_eng": "Body weight is recorded at every visit. See the [WHO reference](https://www.who.int/tools/child-growth-standards) for normal ranges."
}
```

**`_examples`**

A monolingual description with a Markdown link and code block:

```json
{
	"ISO_639_3_eng": "Measured at rest after a 5-minute seated period. See [protocol 3.2](https://example.org/protocol).\n\n```json\n{\"chr_body_weight\": 82.5}\n```"
}
```



A multilingual description:

```json
{
	"ISO_639_3_eng": "Measured in kilograms to one decimal place.",
	"ISO_639_3_ita": "Misurato in chilogrammi con un decimale."
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "Markdown"
  ],
  "_gid" : "_info_string_Markdown",
  "_lid" : "Markdown",
  "_nid" : "_info_string"
}
```

**`_data`**

```json
{
  "_dict" : {
    "_dict_key" : {
      "_dict_key_type" : "_type_enum",
      "_kind_enum" : [
        "ISO_639_3"
      ]
    },
    "_dict_value" : {
      "_scalar" : {
        "_type_scalar" : "_type_string_Markdown"
      }
    }
  }
}
```
