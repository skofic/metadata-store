# `_dict`

**`_title`**

Dictionary

**`_definition`**

The shape property for a key/value dictionary with explicitly typed keys and values. Both dictionary key and value types are required; the value side is a full data section, making the dictionary recursively composable.

**`_description`**

A *dictionary* is a key/value structure in which the key type and value type are both explicitly declared. It contrasts with [`_type_struct`](_type_struct.md) (indeterminate properties) and [`_type_object`](_type_object.md) (properties correspond to descriptor term [`_gid`](_gid.md)s).

[`_dict_key`](_dict_key.md) defines the key type using [`_dict_key_type`](_dict_key_type.md), which accepts only string-compatible types: strings, enumeration elements, term keys, and document handles.

[`_dict_value`](_dict_value.md) is equivalent to a full [`_data`](_data.md) section: it contains exactly one shape sub-property ([`_scalar`](_scalar.md), [`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_dict`](_dict.md)) or [type definition term](_type.md), or is empty to allow any value type. This makes dictionaries fully recursive.

The canonical use case is a *multilingual text property*: keys are language [`_gid`](_gid.md)s (e.g. `ISO_639_3_eng`) and values are plain strings — the pattern used throughout the [`_info`](_info.md) section.

**`_examples`**

A multilingual text dictionary — the pattern used throughout [`_info`](_info.md) sections:

```json
{
	"_dict": {
		"_dict_key": {
			"_dict_key_type": "_type_enum",
			"_kind_enum": ["ISO_639_3"]
		},
		"_dict_value": {
			"_scalar": {
				"_type_scalar": "_type_string"
			}
		}
	}
}
```



A dictionary keyed by string, with array values:

```json
{
	"_dict": {
		"_dict_key": {
			"_dict_key_type": "_type_string"
		},
		"_dict_value": {
			"_array": {
				"_scalar": {
					"_type_scalar": "_type_object",
					"_kind_object": ["some_schema"]
				}
			}
		}
	}
}
```



A nested dictionary (country → language → Markdown text):

```json
{
	"_dict": {
		"_dict_key": {
			"_dict_key_type": "_type_enum",
			"_kind_enum": ["ISO_3166_1"]
		},
		"_dict_value": {
			"_dict": {
				"_dict_key": {
					"_dict_key_type": "_type_enum",
					"_kind_enum": ["ISO_639_3"]
				},
				"_dict_value": {
					"_scalar": {
						"_type_scalar": "_type_string_Markdown"
					}
				}
			}
		}
	}
}
```

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
    "_type_scalar" : "_type_object"
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
