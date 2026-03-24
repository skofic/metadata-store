# `_type_tuple`

**`_title`**

Tuple Types

**`_definition`**

An ordered array of descriptor [`_gid`](_gid.md)s defining the data type of each position in a [`_tuple`](_tuple.md). The descriptor at index n governs the expected type of the value at position n in the tuple. The length of this array sets the absolute maximum number of elements the tuple may contain.

**`_description`**

[`_type_tuple`](_type_tuple.md) is the required property of every non-empty [`_tuple`](_tuple.md) section. It is an ordered array where each entry is the [`_gid`](_gid.md) of a descriptor term. The type definition for position n is resolved by looking up the referenced descriptor and reading its [`_data`](_data.md) section — the type is not written inline.

The length of [`_type_tuple`](_type_tuple.md) determines the absolute upper bound on tuple length. Neither [`_min-items`](_min-items.md) nor [`_max-items`](_max-items.md) in the optional [`_elements`](_elements.md) property may exceed it. When the tuple contains fewer elements than the length of [`_type_tuple`](_type_tuple.md), the types for trailing positions are simply not applied — the tuple is treated as a prefix of the full type sequence.

```json
{
	"_tuple": {
		"_type_tuple": [
			"ISO_3166_1_a2",
			"chr_birth_date",
			"chr_body_weight"
		]
	}
}
```

The first position must conform to the `ISO_3166_1_a2` descriptor (a two-letter country code), the second to `chr_birth_date`, the third to `chr_body_weight`.

---

**`_code`**

```json
{
  "_aid" : [
    "tuple"
  ],
  "_gid" : "_type_tuple",
  "_lid" : "tuple",
  "_nid" : "_type"
}
```

**`_data`**

```json
{
  "_array" : {
    "_scalar" : {
      "_type_scalar" : "_type_key_term_descriptor"
    }
  }
}
```
