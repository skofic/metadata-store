# `_dict_key`

**`_title`**

Dictionary Key

**`_definition`**

The type descriptor for dictionary keys in a [`_dict`](_dict.md) section. The required [`_dict_key_type`](_dict_key_type.md) property selects the data type of the key from the [`_dict_key_type`](_dict_key_type.md) enumeration — a bridge-graph subset of [`_type_scalar_set`](_type_scalar_set.md) restricted to string-compatible types that can serve as valid object property names.

**`_description`**

[`_dict_key`](_dict_key.md) is a required property of every [`_dict`](_dict.md) section. It is structurally parallel to [`_scalar`](_scalar.md) but uses [`_dict_key_type`](_dict_key_type.md) as its required type property, and accepts only string-compatible types — numbers, booleans, and timestamp are excluded because they cannot serve as valid object property names.

**Optional companions** are not listed in the base rule. Instead, they are activated by value-triggered conditional rules: when [`_dict_key_type`](_dict_key_type.md) holds a specific value, a `_predicate_value-of` edge supplies the set of permitted optional properties for that key type. For example:

- [`_kind_enum`](_kind_enum.md): permitted when [`_dict_key_type`](_dict_key_type.md) is [`_type_enum`](_type_enum.md).
- [`_regexp`](_regexp.md): permitted when [`_dict_key_type`](_dict_key_type.md) is [`_type_string`](_type_string.md).
- [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md): permitted for types that carry a unit; [`_unit`](_unit.md) and the name/symbol pair are mutually exclusive.

[`_dict_key_type`](_dict_key_type.md) is always required — unconstrained dictionary keys are not permitted.

**`_examples`**

**Enumeration keys** — keys are ISO 639-3 language identifiers:

```json
{
	"_dict_key": {
		"_dict_key_type": "_type_enum",
		"_kind_enum": ["ISO_639_3"]
	}
}
```

Only valid elements of the `ISO_639_3` controlled vocabulary (e.g. `ISO_639_3_eng`, `ISO_639_3_ita`) are accepted as keys.



**Generic string keys**:

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
  "_scalar" : {
    "_kind_object" : [
      "_dict_key"
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
    "_selection-descriptors_one" : [
      "_dict_key_type"
    ]
  }
}
```
