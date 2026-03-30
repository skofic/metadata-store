# `_type_term_enum-item`

**`_title`**

Enumeration element

**`_definition`**

The term type indicating that the term is a valid enumeration element — a selectable value within at least one controlled vocabulary.

**`_description`**

A term marked `_type_term_enum-item` is connected to one or more enumeration roots via [`_predicate_enum-of`](_predicate_enum-of.md) edges and may be used as a value for properties typed [`_type_enum`](_type_enum.md). A term may simultaneously be an enumeration root (for its own sub-vocabulary) and an enumeration element (of its parent vocabulary) — for example, [`_type_number`](_type_number.md) is both a valid scalar type value and the root of the number sub-types.

---

**`_code`**

```json
{
	"_nid": "_type_term",
	"_lid": "enum-item",
	"_gid": "_type_term_enum-item",
	"_aid": ["enum-item"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
