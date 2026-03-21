# `_dict`

**`_title`**

Dictionary

**`_definition`**

The shape property for a key/value dictionary with explicitly typed keys and values. Both the key type and the value type must be specified.

**`_description`**

This property defines the *shape* and *type* of a *key/value dictionary*. Keys are *strings* that may be *bound* to a *controlled vocabulary*; values may be of *any shape and type*. The [key](_dict_key.md) and [value](_dict_value.md) definitions apply uniformly to all entries in the dictionary.

**`_examples`**

```json
{
	"_dict": {
		"_dict_key": {
			"_type_key": "_type_string"
		},
		"_dict_value": {
			"_array": {
				"_elements": {
					"_min-items": 5,
					"_max-items": 10
				},
				"_scalar": {
					"_type": "_type_object",
					"_kind_object": ["some_object_definition"]
				}
			}
		}
	}
}
```

This example describes a dictionary whose *keys*, [`_dict_key`](_dict_key.md), are [*strings*](_type_string.md), and whose *values*, [`_dict_value`](_dict_value.md), are [*arrays*](_array.md) of between 5 and 10 [objects](_type_object.md) conforming to the `some_object_definition` schema.



```json
{
	"_dict": {
		"_dict_key": {
			"_type_key": "_type_enum",
			"_kind_enum": ["ISO_639_3"]
		},
		"_dict_value": {
			"_scalar": {
				"_type": "_type_string",
				"_kind_string": "_kind_string_Markdown"
			}
		}
	}
}
```

This example describes a dictionary whose *keys*, [`_dict_key`](_dict_key.md), are [global identifiers](_gid.md) of [ISO 639-3](ISO_639_3.md) language codes, and whose *values*, [`_dict_value`](_dict_value.md), are [Markdown](_kind_string_Markdown.md) text strings — a pattern used to implement multilingual styled text.



```json
{
	"_dict": {
		"_dict_key": {
			"_type_key": "_type_enum",
			"_kind_enum": ["ISO_3166_1"]
		},
		"_dict_value": {
			"_dict": {
				"_dict_key": {
					"_type_key": "_type_enum",
					"_kind_enum": ["ISO_639_3"]
				},
				"_dict_value": {
					"_array": {
						"_elements": {
							"_min-items": 5,
							"_max-items": 10
						},
						"_scalar": {
							"_type": "_type_object",
							"_kind_object": ["some_object_definition"]
						}
					}
				}
			}
		}
	}
}
```

This example describes a recursive dictionary. The outer keys are [ISO 3166-1](ISO_3166_1.md) country codes; the values are inner dictionaries keyed by [ISO 639-3](ISO_639_3.md) language codes, whose values are arrays of 5 to 10 objects conforming to `some_object_definition`.



```json
{
	"_dict": {
		"_dict_key": {},
		"_dict_value": {}
	}
}
```

This example describes a dictionary whose keys can be any string and whose values can be of any shape or type.

---

**`_code`**

```json
{
  "_aid" : [
    "dict"
  ],
  "_gid" : "_dict",
  "_lid" : "dict",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_dict"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : {
    "_selection-descriptors_all" : [
      "_dict_key",
      "_dict_value"
    ]
  }
}
```
