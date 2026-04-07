# `_info`

**`_title`**

Information Section

**`_definition`**

The section of a term that holds human-oriented information about what the term represents: its title, definition, description, examples, and supplementary references. All properties are multilingual.

**`_description`**

The information section is present on nearly all [terms](_term.md). It provides the documentation that allows people — not just machines — to understand the term's meaning, scope, and usage.

Every property in this section is multilingual: its value is a key/value dictionary in which the key is the [`_gid`](_gid.md) of a language term drawn from the ISO 639-3 vocabulary and the value is a string. Plain-text properties use the [`_info_string`](_info_string.md) typedef; formatted-text properties use the [`_info_string_formatted`](_info_string_formatted.md) typedef.

The two core properties — [`_title`](_title.md) and [`_definition`](_definition.md) — are required on all terms that carry an information section. [`_description`](_description.md) is strongly recommended and should be omitted only when the definition alone is unambiguous beyond any reasonable doubt. The remaining properties are optional and serve supplementary purposes: measurement methods, usage guidance, examples, citations, provider contacts, external links, and informal notes.

The section is omitted entirely from alias terms, which carry no content of their own and delegate all documentation to the canonical term they point to.

**`_examples`**

A minimal information section with only the required properties:

```json
{
	"_info": {
		"_title": {"ISO_639_3_eng": "Body weight"},
		"_definition": {
			"ISO_639_3_eng": "The mass of the subject's body measured without clothing or shoes."
		}
	}
}
```

A fuller information section:

```json
{
	"_info": {
		"_title": {"ISO_639_3_eng": "Body weight"},
		"_definition": {
			"ISO_639_3_eng": "The mass of the subject's body measured without clothing or shoes. Expressed in kilograms to one decimal place."
		},
		"_description": {
			"ISO_639_3_eng": "Body weight is recorded at every clinical visit as a primary indicator of nutritional status."
		},
		"_methods": {
			"ISO_639_3_eng": "Subject stands barefoot on a calibrated digital scale after an 8-hour overnight fast."
		},
		"_url": {
			"ISO_639_3_eng": "[WHO Child Growth Standards](https://www.who.int/tools/child-growth-standards)"
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "info"
  ],
  "_gid" : "_info",
  "_lid" : "info",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_info"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_description",
    "_methods",
    "_usage",
    "_examples",
    "_citation",
    "_provider",
    "_url",
    "_notes"
  ],
  "_required" : [
    {
      "_selection_descriptors" : [
        "_title",
        "_definition"
      ],
      "_selection_rules" : [
        {
          "_selection_type" : "_type_selection_mandatory"
        }
      ]
    }
  ]
}
```
