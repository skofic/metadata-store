# `_type_data`

**`_title`**

Data types

**`_definition`**

Root of the controlled vocabulary for scalar data types. Every value that `_scalar_type`, `_comparable_type`, or `_dict_key_type` may hold is a descendant of this enumeration.

**`_description`**

`_type_data` is the top-level enumeration root for all scalar data types. Two sub-enumerations are defined as bridge-graph subsets: [`_type_data_comparable`](_type_data_comparable.md), containing all types that support ordering and equality; and [`_type_data_dict_key`](_type_data_dict_key.md), the further-restricted set of string-compatible key types. All data-type enum items hang from this root.

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "data",
	"_gid": "_type_data",
	"_aid": ["data"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root"]
}
```
