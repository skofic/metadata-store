# `_info_string_formatted`

**`_title`**

Multilingual Formatted String

**`_definition`**

A typedef term defining the structure of a multilingual formatted-text string property. The value is a key/value dictionary in which each key is a language term `_gid` drawn from the ISO 639-3 vocabulary and each value is a formatted string (currently Markdown; HTML is also accepted).

**`_description`**

[`_info_string_formatted`](_info_string_formatted.md) is a [typedef](_kind_term_typedef.md) used by all rich-text properties of the [`_info`](_info.md) section: [`_description`](_description.md), [`_examples`](_examples.md), [`_notes`](_notes.md), [`_citation`](_citation.md), [`_provider`](_provider.md), [`_url`](_url.md), and [`_methods`](_methods.md).

The structure is identical to [`_info_string`](_info_string.md) except that the values are **formatted strings** rather than plain text. The current encoding is `_type_string_Markdown`, meaning values may be authored in Markdown or HTML. This typedef is the single control point for the encoding choice: switching all formatted `_info` properties from Markdown to HTML requires changing only the `_type_scalar` of this term from `_type_string_Markdown` to `_type_string_HTML`.

```json
{
	"ISO_639_3_eng": "Body weight is recorded at every clinical visit. See the [WHO reference](https://www.who.int/tools/child-growth-standards) for normal ranges."
}
```

**`_examples`**

A monolingual formatted description:

```json
{
	"ISO_639_3_eng": "Measured at rest after a 5-minute seated period. See [protocol 3.2](https://example.org/protocol)."
}
```

A multilingual formatted description:

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
    "formatted"
  ],
  "_gid" : "_info_string_formatted",
  "_lid" : "formatted",
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
