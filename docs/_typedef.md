# `_typedef`

**`_title`**

Type definition

**`_definition`**

A reference to an existing typedef term by its global identifier. Delegates the shape definition to the referenced typedef term, making it mutually exclusive with all inline shape properties.

**`_description`**

`_typedef` allows a descriptor to inherit its data shape from a named typedef term rather than defining it inline. The value is the [`_gid`](_gid.md) of the typedef term to delegate to. The referenced term must carry `_term_role_typedef` in its `_domn._term_role` and must define its own shape inline — chaining (a typedef referencing another typedef) is not permitted.

When the validator encounters `_typedef`, it performs a single lookup: finds the typedef term, reads its `_data` section, and applies that shape as if it were written inline. This mechanism is used to share complex, reusable shapes across many descriptors without duplication.

The three built-in typedef terms are [`_type_scalar`](_type_scalar.md), [`_type_set`](_type_set.md), and [`_type_key`](_type_key.md), which encode the full allowed-type lists for scalar, set-element, and dictionary-key contexts respectively. `_typedef` is mutually exclusive with all seven inline shape properties.

**`_examples`**

Delegating to the built-in scalar type list:

```json
{
	"_data": {
		"_typedef": "_type_scalar"
	}
}
```

This is how the [`_scalar`](_scalar.md) shape property itself is defined: it delegates to `_type_scalar`, which encodes the complete list of allowed scalar types.

Delegating to the set-compatible type list:

```json
{
	"_data": {
		"_typedef": "_type_set"
	}
}
```

This is how [`_nested`](_nested.md) is defined: it reuses `_type_set` to enforce comparable leaf types.

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
    "_term_key_descriptor" : {

    }
  }
}
```
