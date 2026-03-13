# `_prop`

**`_title`**

Properties Section

**`_definition`**

The section of a term that carries concrete attributes of the real-world entity the term represents. Where the other sections identify, document, and type the term, this section instantiates it — providing the factual properties of the thing the term stands for.

**`_description`**

The properties section turns a classification [term](_term.md) into a structured instance record. Consider a term representing the country Italy: its [identification section](_code.md) gives the ISO 3166 code, its [documentation section](_info.md) provides the human-readable definition, and the [data section](_data.md) of the descriptor may type it as an enumeration element. The properties section is where Italy's actual attributes live — its international dialling code, geographical area, population, capital city, flag symbol, and any other factual data relevant to the entity.

This design allows the dictionary to function as a knowledge base as well as a schema registry: the same term that serves as a value in a controlled vocabulary also carries a rich, structured profile of the real-world entity it identifies. Each property in this section must be a [descriptor](_term_descriptor.md) defined in the dictionary; its value must conform to that descriptor's type definition.

The section is optional and its schema is open: any dictionary-defined descriptor may appear as a property.

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

The properties section, `_prop`, provides the data associated with the *country* Italy, rather than with the *term* Italy, such as its codes, telephone area code, country area, spoken languages, used currencies, bordering countries and the country flag in SVG format.

---

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_object"
  }
}
```
