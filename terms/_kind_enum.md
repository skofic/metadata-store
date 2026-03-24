# `_kind_enum`

**`_title`**

Enumeration Kind

**`_definition`**

Optional qualifier for the [`_type_enum`](_type_enum.md) data type. When present, this set property lists the enumeration roots — controlled vocabulary graph roots — from which the value must be drawn. The value must be a valid element of at least one of the listed vocabularies. When absent, any enumeration element from any controlled vocabulary is accepted.

**`_description`**

The [`_kind_enum`](_kind_enum.md) property qualifies the [`_type_enum`](_type_enum.md) data type by restricting the controlled vocabularies from which the enumeration value may be drawn. It is **optional** and is a set of [`_type_key`](_type_key.md) values, each referencing an *enumeration root*.

An **enumeration** is a controlled vocabulary structured as a tree: the *leaf nodes* are enumeration *elements* — the valid selectable values — and they point upward through *branch nodes* via [`_predicate_enum-of`](_predicate_enum-of.md) edges until they reach a single *root node* that identifies and names the entire vocabulary. The root is the enumeration *type*; the leaves and branches are enumeration *elements*. [`_kind_enum`](_kind_enum.md) always lists **roots**; the *value* of the descriptor is always an **element**.

When [`_kind_enum`](_kind_enum.md) is present, the value *must* be a valid enumeration *element* of at least one of the listed *roots* — reachable from that root by following [`_predicate_enum-of`](_predicate_enum-of.md) edges. When multiple roots are listed, the value is accepted if it belongs to any one of them.

When [`_kind_enum`](_kind_enum.md) is absent, the value may be any enumeration element from any controlled vocabulary defined in the dictionary.

**`_examples`**

**Single vocabulary** — the value must be a valid ISO 639-3 language code:

```json
{
	"_scalar": {
		"_type_scalar": "_type_enum",
		"_kind_enum": ["ISO_639_3"]
	}
}
```

Valid values are enumeration elements of the `ISO_639_3` vocabulary, such as `ISO_639_3_eng` (English) or `ISO_639_3_ita` (Italian). The root `ISO_639_3` itself is not a valid value — only its elements are.



**Multiple vocabularies** — the value may be drawn from either the ISO 639-3 or ISO 639-1 language standard:

```json
{
	"_scalar": {
		"_type_scalar": "_type_enum",
		"_kind_enum": ["ISO_639_3", "ISO_639_1"]
	}
}
```

Both `ISO_639_3_eng` (an ISO 639-3 element) and `ISO_639_1_en` (an ISO 639-1 alias pointing to the same canonical term) are valid. The value need only belong to one of the listed vocabularies.



**No restriction** — the value may be any enumeration element from any vocabulary:

```json
{
	"_scalar": {
		"_type_scalar": "_type_enum"
	}
}
```

Omitting [`_kind_enum`](_kind_enum.md) places no vocabulary constraint on the value. Any term that is an enumeration element in any controlled vocabulary is accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_kind_enum",
  "_lid" : "enum",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_set" : {
    "_scalar_set" : {
      "_type_scalar_set" : "_type_key_term_enum"
    }
  }
}
```
