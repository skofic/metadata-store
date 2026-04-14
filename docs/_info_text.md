# Multilingual formatted text
<p style="color: #888; margin-top: -0.5em;"><code>_info_text</code></p>

> A multilingual dictionary mapping ISO 639-3 language identifiers to Markdown-formatted text strings. The data type of all `_info` properties except `_title` and `_definition`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_info` |
| [Local identifier](_lid.md) | `text` |
| [Global identifier](_gid.md) | `_info_text` |
| [Official identifiers](_aid.md) | `text` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_info",
  "_lid": "text",
  "_gid": "_info_text",
  "_aid": [
    "text"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Multilingual formatted text

**[Definition](_definition.md):** A multilingual dictionary mapping ISO 639-3 language identifiers to Markdown-formatted text strings. The data type of all `_info` properties except `_title` and `_definition`.

**[Description](_description.md)**

`_info_text` defines the structure shared by all formatted `_info` properties. Its keys are the [`_gid`](_gid.md) values of ISO 639-3 language terms, constrained to the `ISO_639_3` enumeration. Its values are Markdown strings — prose, lists, tables, fenced code blocks, and links to other terms or external references are all valid.

All `_info` properties except [`_title`](_title.md) and [`_definition`](_definition.md) use this type: [`_description`](_description.md), [`_examples`](_examples.md), [`_methods`](_methods.md), [`_usage`](_usage.md), [`_citation`](_citation.md), [`_provider`](_provider.md), [`_url`](_url.md), and [`_notes`](_notes.md).

**[Examples](_examples.md)**

A multilingual formatted text value — a description containing a Markdown link:

```json
{
	"ISO_639_3_eng": "Body weight is recorded in kilograms to two decimal places. See [`_unit_weight_kg`](_unit_weight_kg.md) for the unit definition."
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Multilingual formatted text"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  },
  "_notes": {
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
        "_text_Markdown": {}
      }
    }
  }
}
```

</details>
