# Multilingual plain text
<p style="color: #888; margin-top: -0.5em;"><code>_info_string</code></p>

> A multilingual dictionary mapping ISO 639-3 language identifiers to plain text strings. The data type of `_title` and `_definition`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_info` |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_info_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_info",
  "_lid": "string",
  "_gid": "_info_string",
  "_aid": [
    "string"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Multilingual plain text"
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

**Shape:** [Dictionary](_dict.md)

<details>
<summary>JSON</summary>

```json
{
  "_dict": {
    "_dict_key": {
      "_enum": {
        "_enums": [
          "ISO_639_3"
        ]
      }
    },
    "_dict_value": {
      "_scalar": {
        "_text": {}
      }
    }
  }
}
```

</details>
