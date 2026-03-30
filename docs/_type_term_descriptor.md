# `_type_term_descriptor`

**`_title`**

Descriptor

**`_definition`**

The term type indicating that the term is a descriptor — a term carrying a `_data` section that defines the type and shape of a data value.

**`_description`**

A term marked `_type_term_descriptor` carries a [`_data`](_data.md) section describing the type, shape, and constraints of the data it represents. Descriptors are the dictionary's representation of data variables or fields. A descriptor may also be an object definition if it additionally carries a [`_rule`](_rule.md) section.

---

**`_code`**

```json
{
	"_nid": "_type_term",
	"_lid": "descriptor",
	"_gid": "_type_term_descriptor",
	"_aid": ["descriptor"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
