# `_type_key`

**`_title`**

Document Key

**`_definition`**

The scalar data type for document keys — strings representing the `_key` field of any ArangoDB document, without constraining its collection or role. Also the root of the term key sub-type enumeration.

**`_description`**

`_type_key` serves a dual role. As an enumeration element of [`_type_data`](_type_data.md), it declares that a scalar is any document key string. As an enumeration root, it is the parent of [`_type_key_term`](_type_key_term.md) and its sub-types, which add constraints on the referenced document's role. When none of the sub-types is specific enough, `_type_key` itself accepts any document key. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "key",
	"_gid": "_type_key",
	"_aid": ["key"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root", "_type_term_enum-item"]
}
```
