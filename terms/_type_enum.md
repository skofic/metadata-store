# `_type_enum`

**`_title`**

Enumeration

**`_definition`**

Scalar data type for a string representing the `_gid` of an enumeration element. The optional companion property `_kind_enum` restricts the controlled vocabularies from which the value must be drawn.

**`_description`**

When [`_type`](_type.md) is set to `_type_enum`, the descriptor value is a string that must be the [`_gid`](_gid.md) of a valid enumeration *element* — a term reachable from an enumeration root by following [`_predicate_enum-of`](_predicate_enum-of.md) edges. The optional companion property [`_kind_enum`](_kind_enum.md) is a set of enumeration root `_gid`s that restricts the accepted vocabularies; the value must belong to at least one of the listed roots. When `_kind_enum` is absent, the value may be any enumeration element from any controlled vocabulary in the dictionary.

**`_examples`**

**Restricted to one vocabulary** — a language code from ISO 639-3:

```json
{
	"_scalar": {
		"_type": "_type_enum",
		"_kind_enum": ["ISO_639_3"]
	}
}
```

Valid values are elements of the `ISO_639_3` vocabulary, such as `ISO_639_3_eng` (English) or `ISO_639_3_ita` (Italian). The root `ISO_639_3` itself is not a valid value.



**Restricted to multiple vocabularies** — a language code from either ISO 639-3 or ISO 639-1:

```json
{
	"_scalar": {
		"_type": "_type_enum",
		"_kind_enum": ["ISO_639_3", "ISO_639_1"]
	}
}
```

Both `ISO_639_3_eng` and `ISO_639_1_en` are valid; the value need only belong to one of the listed vocabularies.



**Unrestricted** — any enumeration element from any vocabulary:

```json
{
	"_scalar": {
		"_type": "_type_enum"
	}
}
```

No vocabulary constraint. Any term that is an enumeration element in any controlled vocabulary is accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_type_enum",
  "_lid" : "enum",
  "_nid" : "_type"
}
```
