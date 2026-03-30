# `_type_key_term`

**`_title`**

Term Key

**`_definition`**

A document key that must reference a term in the term collection, without constraining the term's role. Also the root of the term key sub-type enumeration.

**`_description`**

`_type_key_term` narrows [`_type_key`](_type_key.md) by requiring the key to reference a term document. As a sub-type root, it is the parent of [`_type_key_term_enum-root`](_type_key_term_enum-root.md), [`_type_key_term_enum-item`](_type_key_term_enum-item.md), [`_type_key_term_descriptor`](_type_key_term_descriptor.md), [`_type_key_term_object`](_type_key_term_object.md), [`_type_key_term_predicate`](_type_key_term_predicate.md), and [`_type_key_term_typedef`](_type_key_term_typedef.md). When none of these sub-types is sufficient, `_type_key_term` accepts any term regardless of role. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type_key",
	"_lid": "term",
	"_gid": "_type_key_term",
	"_aid": ["term"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root", "_type_term_enum-item"]
}
```
