# `_term`

**`_title`**

Term

**`_definition`**

The fundamental unit of the data dictionary. A term is a document whose sections determine its identity, documentation, data type, classification, and real-world properties. The `_code` section is always required. The `_info` section is required on all terms — at minimum a `_title` — so that every term is understandable by a human reader. The sole exception is an alias term, which carries only `_code` and delegates its content to a canonical term via graph edges.

**`_description`**

Terms are the nodes of the data dictionary graph. Each term is a JSON document stored in the terms collection of the ArangoDB database. The sections a term contains determine what it represents:

| Section | Present when |
|---|---|
| [`_code`](_code.md) | Always — provides identifiers |
| [`_info`](_info.md) | Always, except alias terms — provides human-readable documentation |
| [`_data`](_data.md) | Descriptor terms — defines the type and shape of the represented data |
| [`_domn`](_domn.md) | Any term — classifies and categorises the term within the dictionary |
| [`_prop`](_prop.md) | Terms representing real-world entities — records factual attributes of the entity |

Every term must be understandable by a human reader, so `_info` with at least a [`_title`](_title.md) is expected on all terms. The only exception is an **alias term**: a term that exists solely to provide an alternative identifier and whose content is fully supplied by a canonical term elsewhere in the dictionary. An alias term carries only its `_code` section; two graph edges connect it to its canonical counterpart — [`_predicate_bridge-of`](_predicate_bridge-of.md) marking the alias as a bridge node, and [`_predicate_enum-of`](_predicate_enum-of.md) pointing from the canonical term to the alias — so that traversal reaches the canonical term's complete content.

This mechanism is used, for example, to expose a curated subset of a large standard under a more convenient identifier without duplicating any content. An ISO 639-1 alias term for an ISO 639-3 language code carries only its own `_code`; the ISO 639-3 term holds the `_info`, `_prop`, and all other content. Users navigating via the alias automatically resolve to the canonical term.

The ArangoDB system properties [`_id`](_id.md), [`_key`](_key.md), and [`_rev`](_rev.md) are present on every stored document but are not written to the source JSON — `_key` is computed from [`_gid`](_gid.md) at insertion time, and `_id` and `_rev` are assigned by ArangoDB.

**`_examples`**

A minimal term — a namespace root with only an identification section:

```json
{
	"_code": {
		"_lid": "ISO",
		"_gid": "ISO"
	}
}
```

A descriptor term — a floating-point body temperature:

```json
{
	"_code": {
		"_nid": "std_health",
		"_lid": "body-temp",
		"_gid": "std_health_body-temp",
		"_aid": ["body-temp"]
	},
	"_info": {
		"_title": {"ISO_639_3_eng": "Body temperature"},
		"_definition": {"ISO_639_3_eng": "Core body temperature measured in degrees Celsius."}
	},
	"_data": {
		"_scalar": {
			"_number_float": {
				"_unit": "_unit_temperature_degC",
				"_decimals": 1,
				"_range_valid": {
					"_min-inclusive": 30.0,
					"_max-inclusive": 45.0
				},
				"_range_normal": {
					"_min-inclusive": 36.1,
					"_max-inclusive": 37.2
				}
			}
		}
	},
	"_domn": {
		"_term_role": ["_term_role_descriptor"]
	}
}
```

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
  "_object" : {
    "_closed" : {
      "_computed" : [
        "_key"
      ],
      "_default-value" : {
        "_domn" : {

        }
      },
      "_immutable" : [
        "_key"
      ],
      "_locked" : [
        "_id",
        "_rev"
      ],
      "_recommended" : [
        "_info",
        "_data",
        "_domn",
        "_prop"
      ],
      "_required" : [
        {
          "_selection" : [
            "_code"
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
