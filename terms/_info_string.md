# `_info_string`

**`_title`**

Multilingual String

**`_definition`**

A typedef defining the structure of a multilingual plain-text property. The value is a dictionary in which each key is a language term `_gid` drawn from the ISO 639-3 vocabulary and each value is a plain UTF-8 string.

**`_description`**

[`_info_string`](_info_string.md) is a [typedef](_type_term_typedef.md) used by the plain-text properties of the [`_info`](_info.md) section: [`_title`](_title.md) and [`_definition`](_definition.md).

The structure is a dictionary keyed by ISO 639-3 language identifiers — for example `ISO_639_3_eng` for English, `ISO_639_3_ita` for Italian — with plain UTF-8 string values. At least one language entry is expected; the English entry (`ISO_639_3_eng`) is required during Phase 2 of dictionary construction.

Descriptors that reference this typedef use `_typedef: "_info_string"` in their `_data` section rather than repeating the dict structure inline.

**`_examples`**

A monolingual title during early dictionary construction:

```json
{
	"ISO_639_3_eng": "Body weight"
}
```

A fully translated definition:

```json
{
	"ISO_639_3_eng": "The mass of the subject's body.",
	"ISO_639_3_ita": "La massa corporea del soggetto.",
	"ISO_639_3_fra": "La masse corporelle du sujet.",
	"ISO_639_3_deu": "Die Körpermasse der Testperson."
}
```

---

**`_code`**

```json
{
	"_nid": "_info",
	"_lid": "string",
	"_gid": "_info_string",
	"_aid": ["string"]
}
```

**`_data`**

```json
{
	"_dict": {
		"_dict_key": {
			"_dict_key_type": "_type_enum",
			"_enum_types": ["ISO_639_3"]
		},
		"_dict_value": {
			"_scalar": {
				"_scalar_type": "_type_string"
			}
		}
	}
}
```

**`_domn`**

```json
{}
```
