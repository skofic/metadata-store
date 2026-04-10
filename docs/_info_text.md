# `_info_text`

**`_title`**

Multilingual formatted text

**`_definition`**

A multilingual dictionary mapping ISO 639-3 language identifiers to Markdown-formatted text strings. The data type of all `_info` properties except `_title` and `_definition`.

**`_description`**

`_info_text` defines the structure shared by all formatted `_info` properties. Its keys are the [`_gid`](_gid.md) values of ISO 639-3 language terms, constrained to the `ISO_639_3` enumeration. Its values are Markdown strings — prose, lists, tables, fenced code blocks, and links to other terms or external references are all valid.

All `_info` properties except [`_title`](_title.md) and [`_definition`](_definition.md) use this type: [`_description`](_description.md), [`_examples`](_examples.md), [`_methods`](_methods.md), [`_usage`](_usage.md), [`_citation`](_citation.md), [`_provider`](_provider.md), [`_url`](_url.md), and [`_notes`](_notes.md).

**`_examples`**

A multilingual formatted text value — a description containing a Markdown link:

```json
{
	"ISO_639_3_eng": "Body weight is recorded in kilograms to two decimal places. See [`_unit_weight_kg`](_unit_weight_kg.md) for the unit definition."
}
```

**`_notes`**

Renamed from `_info_string_formatted` in version 3.

---

**`_code`**

```json
{
  "_aid" : [
    "text"
  ],
  "_gid" : "_info_text",
  "_lid" : "text",
  "_nid" : "_info"
}
```

**`_data`**

```json
{
  "_dict" : {
    "_dict_key" : {
      "_enum" : {
        "_enums" : [
          "ISO_639_3"
        ]
      }
    },
    "_dict_value" : {
      "_scalar" : {
        "_text_Markdown" : {

        }
      }
    }
  }
}
```
