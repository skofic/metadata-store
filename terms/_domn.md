# `_domn`

**`_title`**

Domains Section

**`_definition`**

The section of a term that classifies it across one or more categorical dimensions. Each property must be a descriptor defined in the dictionary, and its value is typically an enumeration element drawn from a controlled vocabulary identifying the category to which the term belongs.

**`_description`**

The domains section provides a principled mechanism for categorising a [term](_term.md) according to dimensions such as subject domain, measurement type, statistical class, or intended application context. Each property in this section must be a [descriptor](_term_descriptor.md) defined in the dictionary; its value must conform to that descriptor's type definition and is typically an element of a controlled vocabulary.

This section applies to any term in the dictionary — including core dictionary building blocks — and serves two complementary purposes. First, it classifies the term within meaningful subject or application domains. Second, and crucially, it records the *roles* the term may play within the dictionary: for example, whether it functions as a [descriptor](_term_descriptor.md), an enumeration element, a namespace, an object schema definition, or any combination of these. Storing roles explicitly in `_domn` enables a consumer to determine immediately what a term can be used for, without traversing the graph to infer its function from its relationships.

The section is optional and its schema is open: any dictionary-defined descriptor may appear as a property. When the term object operates in closed mode, only descriptors listed in the term's [structure rules](_rule.md) are permitted.

**`_examples`**

```json
{
	"_code": {
		"_nid": "ISO_3166_1",
		"_lid": "ITA",
		"_gid": "ISO_3166_1_ITA",
		"_aid": [
			"IT",
			"ITA",
			"380"
		],
		"_emoji": "🇮🇹"
	},
	"_info": {
		"_title": {
			"ISO_639_3_eng": "Italy",
			"ISO_639_3_amh": "ጣሑ።ን"
		},
		"_definition": {
			"ISO_639_3_eng": "Italian Republic",
			"ISO_639_3_amh": "ፘመጢጘለኢፄ ጐፔሱጢ ሱፐብሑጤ"
		}
	},
	"_domn": {
		"std_country_region": {
			"ISO_639_3_eng": "Europe"
		},
		"std_country_sub-region": {
			"ISO_639_3_eng": "Southern Europe"
		}
	},
	"_prop": {
		"ISO_3166_alpha3": "ITA",
		"ISO_3166_alpha2": "IT",
		"ISO_3166_numeric": "380",
		"std_country_ioc": "ITA",
		"std_country_tld": [
			".it"
		],
		"std_country_tel": [
			"+39"
		],
		"std_country_area": 301336,
		"std_country_languages": [
			"ISO_639_3_ita"
		],
		"std_country_currencies": [
			"ISO_4217_EUR"
		],
		"std_country_borders": [
			"ISO_3166_1_AUT",
			"ISO_3166_1_FRA",
			"ISO_3166_1_SMR",
			"ISO_3166_1_SVN",
			"ISO_3166_1_CHE",
			"ISO_3166_1_VAT"
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
