# `_typedef`

**`_title`**

Typedef reference

**`_definition`**

The shape property that delegates the data type definition to an existing typedef term. Its value is the `_gid` of the typedef term. Mutually exclusive with all six inline shape properties.

**`_description`**

`_typedef` is an alternative to the six inline shape properties ([`_scalar`](_scalar.md), [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_dict`](_dict.md)). Instead of defining the data shape inline, it references an existing typedef term by [`_gid`](_gid.md). The shape is resolved by looking up the referenced term's `_data` section and applying it as if written inline.

**Rules:**

- `_typedef` is mutually exclusive with all six inline shape properties. A `_data` (or `_dict_value` or `_array`) section either defines its shape inline or references a typedef — never both.
- The typedef term must define its shape **inline** using one of the six concrete shape properties. A typedef must not itself use `_typedef` — chaining is prohibited.
- `_typedef` holds a **single `_gid`**. Only one typedef may be referenced per section.
- A descriptor whose `_data` uses `_typedef` must **not** carry a `_rule` section. Schema constraints belong on the typedef term itself.
- Validation performs **one lookup**: find the typedef term, read its `_data` section, and apply it as if written inline.

The optional [`_elements`](_elements.md) property may be added alongside `_typedef` in an `_array` section to constrain the element count, regardless of the shape defined by the typedef.

**`_examples`**

A descriptor that delegates its shape to the [`_info_string`](_info_string.md) typedef term:

```json
{"_data": {"_typedef": "_info_string"}}
```

The [`_info_string`](_info_string.md) typedef term (a multilingual string dictionary):

```json
{
	"_code": {
		"_nid": "_info",
		"_lid": "string",
		"_gid": "_info_string",
		"_aid": ["string"]
	},
	"_data": {
		"_dict": {
			"_dict_key": {"_dict_key_type": "_type_key_term"},
			"_dict_value": {"_scalar": {"_scalar_type": "_type_string"}}
		}
	},
	"_domn": {"_term_type": ["_type_term_typedef"]}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_typedef",
  "_lid" : "typedef",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_scalar_type" : "_type_key_term_typedef"
  }
}
```
