# `_dict_key`

**`_title`**

Dictionary key

**`_definition`**

The sub-section that defines the data type of the keys in a dictionary. Always required. Uses `_dict_key_type` instead of `_scalar_type`; only string-compatible types are accepted as dictionary keys.

**`_description`**

[`_dict_key`](_dict_key.md) defines the type of the key side of a dictionary entry. It is structurally parallel to [`_scalar`](_scalar.md) but uses [`_dict_key_type`](_dict_key_type.md) as the required type property. Because dictionary keys must be valid object property names, only string-compatible types are accepted — numeric types, [`_type_boolean`](_type_boolean.md), [`_type_timestamp`](_type_timestamp.md), and [`_type_regexp`](_type_regexp.md) are excluded.

Like [`_comparable`](_comparable.md), `_dict_key` can never be empty: [`_dict_key_type`](_dict_key_type.md) is always required, because unconstrained dictionary keys are not permitted.

Optional companion properties — such as [`_enum_types`](_enum_types.md) and [`_regexp`](_regexp.md) — are activated by value-triggered conditional rules on [`_dict_key_type`](_dict_key_type.md), exactly as in [`_scalar`](_scalar.md).

**`_examples`**

A dictionary key constrained to ISO 639-3 language codes:

```json
{
	"_dict_key": {
		"_dict_key_type": "_type_enum",
		"_enum_types": ["ISO_639_3"]
	}
}
```

A dictionary key that must be a plain string:

```json
{
	"_dict_key": {
		"_dict_key_type": "_type_string"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "_dict",
	"_lid": "key",
	"_gid": "_dict_key",
	"_aid": ["key"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_dict_key"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_required": [
		{
			"_selection_rules": [
				{"_selection_type": "_type_selection_mandatory"}
			],
			"_selection_descriptors": ["_dict_key_type"]
		}
	]
}
```

**`_domn`**

```json
{}
```
