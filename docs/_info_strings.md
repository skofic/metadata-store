# Multilingual plain text strings
<p><a href="_term_role_typedef.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Type definition</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_info_strings</code></p>

> An array of multilingual plain-text string dictionaries. Each element maps ISO 639-3 language identifiers to plain-text strings, allowing a single field to carry multiple named values each expressed in multiple languages.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Information section](_info.md) |
| [Local identifier](_lid.md) | `strings` |
| [Global identifier](_gid.md) | `_info_strings` |
| [Official identifiers](_aid.md) | `strings` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "strings"
  ],
  "_gid" : "_info_strings",
  "_lid" : "strings",
  "_nid" : "_info"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Multilingual plain text strings

**[Definition](_definition.md):** An array of multilingual plain-text string dictionaries. Each element maps ISO 639-3 language identifiers to plain-text strings, allowing a single field to carry multiple named values each expressed in multiple languages.

**[Description](_description.md)**

`_info_strings` is the data type for fields that need to store **multiple values**, each of which can be expressed in multiple languages. It differs from [`_info_string`](_info_string.md), which stores a single multilingual string, by being an **array** of such strings.

The canonical use case is national capitals: a country may have more than one capital (e.g. South Africa has Pretoria, Cape Town, and Bloemfontein), and each capital name should be available in multiple languages.

Each element of the array is a dictionary whose keys are ISO 639-3 language `_gid` values and whose values are plain-text strings — the same structure as [`_info_string`](_info_string.md). The array order is significant: elements should be listed in the order they are conventionally named (e.g. primary capital first).

Descriptors whose data type is `_info_strings` reference it via `_data._typedef`:

```json
{
	"_data": {
		"_typedef": "_info_strings"
	}
}
```

**[Examples](_examples.md)**

A country with two capitals, each named in English and French:

```json
[
	{"ISO_639_3_eng": "Pretoria", "ISO_639_3_fra": "Pretoria"},
	{"ISO_639_3_eng": "Cape Town", "ISO_639_3_fra": "Le Cap"},
	{"ISO_639_3_eng": "Bloemfontein", "ISO_639_3_fra": "Bloemfontein"}
]
```

A country with a single capital:

```json
[
	{"ISO_639_3_eng": "Rome", "ISO_639_3_ita": "Roma", "ISO_639_3_fra": "Rome"}
]
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
    "ISO_639_3_eng" : "Multilingual plain text strings"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Array](_array.md) — *Nested structure — see JSON*

<details>
<summary>JSON</summary>

```json
{
  "_array" : {
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
}
```

</details>
