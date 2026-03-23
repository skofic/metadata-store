# `_term`

**`_title`**

Term

**`_definition`**

The fundamental unit of the data dictionary. A term identifies, classifies, and optionally documents a concept, data variable, schema, or enumeration value. Every element of the dictionary — including the structural rules that govern the dictionary itself — is represented as a term.

**`_description`**

Terms are the foundational documents of the data dictionary. Every concept, data variable, schema definition, and controlled vocabulary value is stored as a term. A term requires at minimum an [identification section](_code.md). A [documentation section](_info.md) is expected on nearly all terms and is structurally recommended; alias terms are the only exception, carrying only an identification section and delegating all documentation to the canonical term they point to. A term may additionally carry a [data type section](_data.md) — present when the term represents a typed data variable ([descriptor](_term_descriptor.md)) — and a [structure rules section](_rule.md) — present when the term defines the schema of an object.

Two further optional sections may also be present. The [properties section](_prop.md) carries concrete attributes of the real-world entity the term represents, turning a classification term into a structured instance record. The [domains section](_domn.md) classifies the term across categorical dimensions, recording the subject domain, measurement type, or other classification axes relevant to the term's usage.

The dictionary is self-describing: the terms that define the dictionary's own structure are themselves stored as terms.

**`_examples`**

Generic term example:

```json
	{
		"_code": {
			"_nid": "ISO_3166_3",
			"_lid": "ITA",
			"_gid": "ISO_3166_3_ITA",
			"_aid": ["ITA", "IT", "I"],
			"_name": "Italia",
			"_emoji": "🇮🇹"
		},
		"_info": {
			"_title": {
				"ISO_639_3_eng": "Italy",
				"ISO_639_3_ita": "Italia"
			},
			"_definition": {
				"ISO_639_3_eng": "Italian Republic",
				"ISO_639_3_ita": "Repubblica Italiana"
			}
		}
	}
```

This term represents the country Italy. Its namespace chain (`ISO` → `ISO_3166` → `ISO_3166_3`) reflects the hierarchy of the ISO 3166-3 standard for country codes.

---

**`_code`**

```json
{
  "_aid" : [
    "term"
  ],
  "_gid" : "_term",
  "_lid" : "term",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_term"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_computed" : [
    "_key"
  ],
  "_immutable" : [
    "_key"
  ],
  "_recommended" : [
    "_info",
    "_data",
    "_rule",
    "_prop",
    "_domn"
  ],
  "_required" : {
    "_selection-descriptors_all" : [
      "_key",
      "_code"
    ]
  }
}
```
