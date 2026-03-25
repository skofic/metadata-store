# `_dict_value`

**`_title`**

Dictionary Value

**`_definition`**

The value descriptor for a [`_dict`](_dict.md) section. Equivalent to a full [`_data`](_data.md) section: contains exactly one shape sub-property ([`_scalar`](_scalar.md), [`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), or [`_dict`](_dict.md)), or is empty to allow values of any type and shape. This makes dictionaries fully recursive.

**`_description`**

[`_dict_value`](_dict_value.md) is a required property of every non-empty [`_dict`](_dict.md) section. Its structure is identical to a [`_data`](_data.md) section: it contains exactly one shape sub-property that defines the type and shape of each dictionary value. Because [`_dict`](_dict.md) is one of the allowed shapes, dictionaries can be nested arbitrarily — the value of a dictionary can itself be another dictionary with its own key and value types.

An empty `_dict_value` object (`"_dict_value": {}`) means the dictionary accepts values of any shape and type.

The canonical use case is the **multilingual text property** used throughout the [`_info`](_info.md) section: keys are language [`_gid`](_gid.md)s (e.g. `ISO_639_3_eng`) and values are plain strings.

**`_examples`**

**Multilingual text** — the pattern used throughout [`_info`](_info.md) sections:

```json
{
	"_dict_value": {
		"_scalar": {
			"_type_scalar": "_type_string"
		}
	}
}
```



**Array values** — each key maps to an array of objects:

```json
{
	"_dict_value": {
		"_array": {
			"_scalar": {
				"_type_scalar": "_type_object",
				"_kind_object": ["some_schema"]
			}
		}
	}
}
```



**Nested dictionary** — country → language → Markdown text:

```json
{
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
```



**Unconstrained** — values of any type:

```json
{
	"_dict_value": {}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "value"
  ],
  "_gid" : "_dict_value",
  "_lid" : "value",
  "_nid" : "_dict"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_data"
    ],
    "_type_scalar" : "_type_object"
  }
}
```
