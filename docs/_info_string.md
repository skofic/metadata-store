# `_info_string`

**`_title`**

Multilingual plain text

**`_definition`**

A multilingual dictionary mapping ISO 639-3 language identifiers to plain text strings. The data type of `_title` and `_definition`.

**`_description`**

`_info_string` defines the structure shared by all plain-text `_info` properties. Its keys are the [`_gid`](_gid.md) values of ISO 639-3 language terms, constrained to the `ISO_639_3` enumeration. Its values are plain text strings — no Markdown, no HTML, no links.

In practice, only [`_title`](_title.md) and [`_definition`](_definition.md) use this type. All other `_info` properties use [`_info_text`](_info_text.md), which allows formatted content.

**`_examples`**

A multilingual plain-text value — the title of a term in three languages:

```json
{
	"ISO_639_3_eng": "Body weight",
	"ISO_639_3_ita": "Peso corporeo",
	"ISO_639_3_fra": "Poids corporel"
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_info_string",
  "_lid" : "string",
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
        "_text" : {

        }
      }
    }
  }
}
```
