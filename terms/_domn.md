# `_domn`

**`_title`**

Domains Section

**`_definition`**

The section of a term that classifies it across one or more categorical dimensions. Each property must be a descriptor defined in the dictionary, and its value is typically an enumeration element drawn from a controlled vocabulary identifying the category to which the term belongs.

**`_description`**

The domains section provides a principled mechanism for categorising a [term](_term.md) according to dimensions such as subject domain, measurement type, statistical class, or intended application context. Each property in this section must be a [descriptor](_term_descriptor.md) defined in the dictionary; its value must conform to that descriptor's type definition and is typically an element of a controlled vocabulary.

This section is used primarily for user-defined terms — [descriptors](_term_descriptor.md), object [schemas](_term_object.md), and custom enumerations — where the nature and intended usage of the term need to be recorded alongside its definition to support discovery and filtering. Core dictionary building blocks — the structural terms that define the dictionary itself — generally do not require this section.

The section is optional and its schema is open: any dictionary-defined descriptor may appear as a property. When the term object operates in closed mode, only descriptors listed in the term's [structure rules](_rule.md) are permitted.

**`_examples`**

```json
{
	"_code": {
		"_nid": "iso_3166_1",
		"_lid": "ITA",
		"_gid": "iso_3166_1_ITA",
		"_aid": [
			"IT",
			"ITA",
			"380"
		],
		"_emoji": "🇮🇹"
	},
	"_info": {
		"_title": {
			"iso_639_3_eng": "Italy",
			"iso_639_3_amh": "ጣሑ።ን"
		},
		"_definition": {
			"iso_639_3_eng": "Italian Republic",
			"iso_639_3_amh": "ፘመጢጘለኢፄ ጐፔሱጢ ሱፐብሑጤ"
		}
	},
	"_domn": {
		"std_country_region": {
			"iso_639_3_eng": "Europe"
		},
		"std_country_sub-region": {
			"iso_639_3_eng": "Southern Europe"
		}
	},
	"_prop": {
		"iso_3166_alpha3": "ITA",
		"iso_3166_alpha2": "IT",
		"iso_3166_numeric": "380",
		"std_country_ioc": "ITA",
		"std_country_tld": [
			".it"
		],
		"std_country_tel": [
			"+39"
		],
		"std_country_area": 301336,
		"std_country_languages": [
			"iso_639_3_ita"
		],
		"std_country_currencies": [
			"iso_4217_EUR"
		],
		"std_country_borders": [
			"iso_3166_1_AUT",
			"iso_3166_1_FRA",
			"iso_3166_1_SMR",
			"iso_3166_1_SVN",
			"iso_3166_1_CHE",
			"iso_3166_1_VAT"
		]
	}
}
```

This example represents the country *Italy*. The *code* and *information* sections provide respectively the identification and documentation of the enumeration term.

The domains section, `_domn`, provides the *domains* and *categories* associated with the *term* Italy, such as the country region and sub-region.

---

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_object"
  }
}
```
