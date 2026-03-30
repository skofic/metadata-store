# `_tuple_type`

**`_title`**

Tuple element types

**`_definition`**

An ordered list of descriptor `_gid`s defining the expected data type at each position of the enclosing tuple. The type at position *n* in the list governs the value at position *n* in the tuple.

**`_description`**

`_tuple_type` is an array of descriptor [`_gid`](_gid.md)s. Each entry references an existing descriptor term, and the [`_data`](_data.md) section of that term defines the type expected at the corresponding tuple position. Order is significant: position *n* in `_tuple_type` governs position *n* in the tuple value.

The length of `_tuple_type` defines the maximum number of elements the tuple may contain. When [`_elements`](_elements.md) is absent from the enclosing [`_tuple`](_tuple.md), the tuple must contain exactly as many elements as `_tuple_type`. When `_elements` is present, its bounds govern the tuple length but may not exceed the length of `_tuple_type`.

This indirection means tuple positions reuse existing descriptor definitions from the dictionary rather than duplicating type information. The type of a tuple element is fully resolved by looking up the referenced descriptor and reading its `_data` section.

**`_examples`**

A `_tuple_type` defining three positional types — country code, birth date, and body weight:

```json
{
	"_tuple_type": [
		"ISO_3166_1_FRA",
		"chr_birth_date",
		"chr_body_weight"
	]
}
```

---

**`_code`**

```json
{
	"_nid": "_tuple",
	"_lid": "type",
	"_gid": "_tuple_type",
	"_aid": ["type"]
}
```

**`_data`**

```json
{
	"_array": {
		"_scalar": {
			"_scalar_type": "_type_key_term_descriptor"
		}
	}
}
```

**`_domn`**

```json
{}
```
