# `_dict_key_type`

**`_title`**

Dictionary key type

**`_definition`**

The data type of the keys in a dictionary. Always required. Its value must be drawn from the `_type_data_dict_key` enumeration — a subset of the comparable type vocabulary restricted to string-compatible types.

**`_description`**

`_dict_key_type` is required in every [`_dict_key`](_dict_key.md) section. It is a bridge-graph subset of [`_comparable_type`](_comparable_type.md) ([`_type_data_dict_key`](_type_data_dict_key.md) ⊂ [`_type_data_comparable`](_type_data_comparable.md) ⊂ [`_type_data`](_type_data.md)), accepting only string-compatible types that can serve as valid object property names.

Excluded from `_dict_key_type`: all number types ([`_type_number`](_type_number.md), [`_type_number_float`](_type_number_float.md), [`_type_number_integer`](_type_number_integer.md)), [`_type_boolean`](_type_boolean.md), [`_type_timestamp`](_type_timestamp.md), and [`_type_regexp`](_type_regexp.md). These are either non-string or would produce ambiguous or invalid property names.

Accepted types include: [`_type_string`](_type_string.md) and all non-formatted string sub-types, all `_type_key*` variants, [`_type_handle`](_type_handle.md), and [`_type_enum`](_type_enum.md).

Like [`_comparable_type`](_comparable_type.md), each value activates a conditional rule that governs which companion properties are permitted in the same [`_dict_key`](_dict_key.md) section.

---

**`_code`**

```json
{
	"_nid": "_dict_key",
	"_lid": "type",
	"_gid": "_dict_key_type",
	"_aid": ["type"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_enum",
		"_enum_types": ["_type_data_dict_key"]
	}
}
```

**`_domn`**

```json
{}
```
