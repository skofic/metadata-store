# Multilingual plain text
<p><a href="_term_role_typedef.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Type definition</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_info_string</code></p>

> A multilingual dictionary mapping ISO 639-3 language identifiers to plain text strings. The data type of `_title` and `_definition`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Information section](_info.md) |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_info_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Multilingual plain text

**[Definition](_definition.md):** A multilingual dictionary mapping ISO 639-3 language identifiers to plain text strings. The data type of `_title` and `_definition`.

**[Description](_description.md)**

`_info_string` defines the structure shared by all plain-text `_info` properties. Its keys are the [`_gid`](_gid.md) values of ISO 639-3 language terms, constrained to the `ISO_639_3` enumeration. Its values are plain text strings — no Markdown, no HTML, no links.

In practice, only [`_title`](_title.md) and [`_definition`](_definition.md) use this type. All other `_info` properties use [`_info_text`](_info_text.md), which allows formatted content.

**[Examples](_examples.md)**

A multilingual plain-text value — the title of a term in three languages:

```json
{
	"ISO_639_3_eng": "Body weight",
	"ISO_639_3_ita": "Peso corporeo",
	"ISO_639_3_fra": "Poids corporel"
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
    "ISO_639_3_eng" : "Multilingual plain text"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Dictionary](_dict.md)

**[Dictionary key](_dict_key.md):** [Enumerated value](_enum.md) ([Controlled vocabularies](_enums.md): [ISO_639_3](ISO_639_3.md))

**[Dictionary value](_dict_value.md)**

[Scalar](_scalar.md) — [Text](_text.md)

<details>
<summary>JSON</summary>

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

</details>
