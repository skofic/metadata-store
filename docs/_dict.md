# `_dict`

**`_title`**

Dictionary

**`_definition`**

The shape property for a key/value structure with explicitly typed keys and values. Both the required `_dict_key` and `_dict_value` sub-sections must be present.

**`_description`**

A *dictionary* is a set of key/value pairs in which both keys and values are typed. Keys are defined by the required [`_dict_key`](_dict_key.md) sub-section, which restricts the key to a string-compatible type. Values are defined by the required [`_dict_value`](_dict_value.md) sub-section, which is equivalent to a full [`_data`](_data.md) section — making the dictionary structure fully recursive.

This contrasts with [`_type_object`](_type_object.md), whose properties must be descriptor [`_gid`](_gid.md)s from the dictionary, and [`_type_struct`](_type_struct.md), whose properties are entirely unconstrained. A dictionary has explicitly declared key and value types.

The canonical use of `_dict` in the core dictionary is the multilingual string structure used throughout the `_info` section: keys are ISO 639-3 language `_gid`s and values are plain strings.

**`_examples`**

A multilingual string — ISO 639-3 language code keys, plain string values:

```json
{
	"_dict": {
		"_dict_key": {"_dict_key_type": "_type_enum", "_enum_types": ["ISO_639_3"]},
		"_dict_value": {"_scalar": {"_scalar_type": "_type_string"}}
	}
}
```

A dictionary mapping term keys to arrays of integers:

```json
{
	"_dict": {
		"_dict_key": {"_dict_key_type": "_type_key_term"},
		"_dict_value": {"_array": {"_scalar": {"_scalar_type": "_type_number_integer"}}}
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
    "_object_types" : [
      "_dict"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : [
    {
      "_selection_descriptors" : [
        "_dict_key",
        "_dict_value"
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
