# `_enum_types`

**`_title`**

Enumeration types

**`_definition`**

A set of enumeration root `_gid`s identifying the controlled vocabularies from which the value must be drawn. The value must belong to at least one of the listed vocabularies. When absent, any enumeration element from any vocabulary is accepted.

**`_description`**

`_enum_types` is an optional companion to [`_scalar_type`](_scalar_type.md), [`_comparable_type`](_comparable_type.md), and [`_dict_key_type`](_dict_key_type.md) when their value is `_type_enum`. It restricts the allowed enumeration elements to those reachable from the listed vocabulary roots.

Each element in the set is the [`_gid`](_gid.md) of an enumeration root term — a term that acts as the root of a controlled vocabulary graph. A value is accepted if it is a valid element of **at least one** of the listed vocabularies.

When `_enum_types` is absent, the value may be any enumeration element from any controlled vocabulary in the dictionary.

**`_examples`**

Restrict an enumeration value to ISO 639-3 language codes:

```json
{"_scalar": {"_scalar_type": "_type_enum", "_enum_types": ["ISO_639_3"]}}
```

Allow values from either ISO 639-3 or ISO 639-1:

```json
{
	"_comparable": {
		"_comparable_type": "_type_enum",
		"_enum_types": ["ISO_639_3", "ISO_639_1"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "types"
  ],
  "_gid" : "_enum_types",
  "_lid" : "types",
  "_nid" : "_enum"
}
```

**`_data`**

```json
{
  "_set" : {
    "_comparable" : {
      "_comparable_type" : "_type_key_term_enum-root"
    }
  }
}
```
