# `_prop`

**`_title`**

Properties Section

**`_definition`**

The section of a term that records the concrete attributes of the real-world entity the term represents. Each property must be a descriptor defined in the dictionary, and its value must conform to that descriptor's type definition.

**`_description`**

The properties section turns a classification or identification term into a structured instance record. Where the [code section](_code.md) provides identifiers and the [information section](_info.md) provides documentation, `_prop` holds factual, typed data about the entity itself — attributes that are intrinsic to the real-world concept rather than metadata about the dictionary entry.

For example, a country term in the ISO 3166 vocabulary might carry identifiers and multilingual titles in [`_code`](_code.md) and [`_info`](_info.md), while `_prop` records the country's international dialling code, geographical area, spoken languages, official currencies, and neighbouring countries — facts that belong to the entity, not to its dictionary representation.

Every property in `_prop` must be a descriptor defined in the dictionary; its value must conform to that descriptor's type definition. The section has no fixed schema: any dictionary-defined descriptor may appear as a property. Unlike the [domains section](_domn.md), which classifies terms categorically, `_prop` carries the actual measured or factual values of the entity's attributes.

**`_examples`**

A country term's properties section recording its dialling code, area, official languages, currencies, and land borders:

```json
{
	"_prop": {
		"std_country_dialling-code": "+39",
		"std_country_area_km2": 301340,
		"std_country_languages": ["ISO_639_3_ita"],
		"std_country_currencies": ["ISO_4217_EUR"],
		"std_country_borders": [
			"ISO_3166_3_AUT",
			"ISO_3166_3_FRA",
			"ISO_3166_3_SMR",
			"ISO_3166_3_SVN",
			"ISO_3166_3_CHE",
			"ISO_3166_3_VAT"
		]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "prop"
  ],
  "_gid" : "_prop",
  "_lid" : "prop",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_object"
  }
}
```
