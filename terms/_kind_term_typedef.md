# `_kind_term_typedef`

**`_title`**

Type Definition

**`_definition`**

An enumeration element indicating that the term is a type definition — a reusable data type descriptor that other descriptors may reference by key instead of repeating its data definition inline. A typedef term carries a concrete [`_data`](_data.md) section with an inline shape definition and may also carry a [`_rule`](_rule.md) section.

**`_description`**

[`_kind_term_typedef`](_kind_term_typedef.md) is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as a type definition — a reusable data shape that other descriptors can reference via the [`_type`](_type.md) shape property in their [`_data`](_data.md) section.

A typedef term must carry a [`_data`](_data.md) section with a concrete, fully inline shape definition using one of the five shape properties (`_scalar`, `_array`, `_set`, `_tuple`, or `_dict`). It must **not** itself use [`_type`](_type.md) — chaining is prohibited; the type must always be resolved in a single lookup. A typedef may optionally carry a [`_rule`](_rule.md) section that applies to the resolved value.

Another descriptor references a typedef by placing the typedef term's `_gid` in the [`_type`](_type.md) property of its [`_data`](_data.md) section. During validation, the referenced term's [`_data`](_data.md) section is looked up and applied as if it were written inline. No further indirection occurs.

A common use case is a reusable multilingual string structure — a dictionary keyed by language `_gid`s with string values — which many descriptors in the `_info` section share:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "multilingual_string",
		"_gid": "_info_string",
		"_aid": ["multilingual_string"]
	},
	"_data": {
		"_dict": {
			"_dict_key": {"_dict_key_type": "_type_key_term"},
			"_dict_value": {"_scalar": {"_type_scalar": "_type_string"}}
		}
	},
	"_domn": {
		"_kind_term": ["_kind_term_typedef"]
	}
}
```

A descriptor that uses this typedef:

```json
{
	"_data": {
		"_type": "_info_string"
	}
}
```

The validator resolves `_info_string`, reads its `_data._dict` definition, and applies it as if the descriptor had declared the dictionary inline.

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_kind_term_typedef",
  "_lid" : "typedef",
  "_nid" : "_kind_term"
}
```
