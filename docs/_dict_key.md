# `_dict_key`

**`_title`**

Dictionary key

**`_definition`**

The sub-property of a dictionary that defines the type of its keys. Uses the type-as-key convention: the key type is expressed as a property key inside the object. Only string-compatible comparable types are accepted.

**`_description`**

`_dict_key` defines the type of the key side of a dictionary entry. It uses the same type-as-key convention as [`_scalar`](_scalar.md) and [`_set`](_set.md): the key type is expressed as a property key inside the `_dict_key` object, and the value associated with that key is an object of companion properties.

Because dictionary keys must be valid string identifiers, only string-compatible comparable types are accepted. Excluded are all number types, `_boolean`, `_timestamp`, and `_string_regexp`. Accepted types include `_string` and all `_string_*` variants (except `_string_regexp`), all `_term_key*` variants, `_handle`, and `_enum`.

`_dict_key` uses `_typedef: "_type_key"` internally, which encodes the full list of accepted key types.

**`_examples`**

ISO 639-3 language codes as dictionary keys:

```json
{
	"_dict_key": {
		"_enum": {
			"_enums": ["ISO_639_3"]
		}
	}
}
```

Plain string keys with no constraint:

```json
{
	"_dict_key": {
		"_string": {}
	}
}
```

Descriptor term keys:

```json
{
	"_dict_key": {
		"_term_key_descriptor": {}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_dict_key",
  "_lid" : "key",
  "_nid" : "_dict"
}
```

**`_data`**

```json
{
  "_typedef" : "_type_key"
}
```
