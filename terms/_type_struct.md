# `_type_struct`

**`_title`**

Structure

**`_definition`**

The scalar data type for arbitrary objects with unconstrained property names and values. No schema constraints apply.

**`_description`**

`_type_struct` declares that the value is a JSON object with no constraints on its property names or value types. Unlike [`_type_object`](_type_object.md) (where properties must be descriptor [`_gid`](_gid.md)s) and [`_dict`](_dict.md) (where both keys and values are explicitly typed), `_type_struct` imposes no schema. Used for free-form or opaque data — for example, edge [`_path_data`](_path_data.md) values. Not a member of [`_type_data_comparable`](_type_data_comparable.md) or [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "struct",
	"_gid": "_type_struct",
	"_aid": ["struct"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
