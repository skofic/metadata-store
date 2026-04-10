# `_info`

**`_title`**

Information section

**`_definition`**

The section of a term that provides human-readable information about what the term represents. Contains the term's title, definition, full description, and optional documentary properties. All values are multilingual dictionaries keyed by ISO 639-3 language identifiers.

**`_description`**

The `_info` section is present on most terms and carries the documentation that makes a term meaningful to human readers — what it means, how it is used, and who curates it. It is absent only on alias terms, which carry a [`_code`](_code.md) section alone and delegate all content to the canonical term they alias.

All `_info` properties share the same multilingual structure: each property's value is a dictionary mapping ISO 639-3 language [`_gid`](_gid.md) values to text strings. Two properties are required: [`_title`](_title.md) and [`_definition`](_definition.md). [`_description`](_description.md) is strongly recommended for most terms. The remaining properties are optional.

The two underlying dictionary types are [`_info_string`](_info_string.md) for plain text and [`_info_text`](_info_text.md) for formatted text. Required properties use plain text; descriptive and documentary properties use formatted text.

**`_examples`**

A minimal `_info` section with required properties only:

```json
{
	"_info": {
		"_title": {
			"ISO_639_3_eng": "Body weight"
		},
		"_definition": {
			"ISO_639_3_eng": "The total mass of a person's body measured at a specific point in time."
		}
	}
}
```

A fuller `_info` section with multilingual title and formatted description:

```json
{
	"_info": {
		"_title": {
			"ISO_639_3_eng": "Body weight",
			"ISO_639_3_ita": "Peso corporeo"
		},
		"_definition": {
			"ISO_639_3_eng": "The total mass of a person's body. Expressed in kilograms."
		},
		"_description": {
			"ISO_639_3_eng": "Body weight is recorded to two decimal places in kilograms..."
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
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_description",
        "_examples",
        "_methods",
        "_usage",
        "_citation",
        "_provider",
        "_url",
        "_notes"
      ],
      "_required" : [
        {
          "_selection" : [
            "_title",
            "_definition"
          ],
          "_selectors" : [
            {
              "_all" : {

              }
            }
          ]
        }
      ]
    }
  }
}
```
