# `_type_key_term_typedef`

**`_title`**

Typedef Term Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference a typedef term — a term carrying the [`_kind_term_typedef`](_kind_term_typedef.md) role and providing a reusable data shape definition.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_typedef`, the descriptor value is a string that must be the `_key` of a term that carries [`_kind_term_typedef`](_kind_term_typedef.md) in its [`_domn._kind_term`](_kind_term.md) set. This type is used by the [`_type`](_type.md) shape property itself — the property that allows a [`_data`](_data.md) section to reference a reusable type definition instead of declaring its shape inline.

The validator resolves the referenced typedef term, reads its [`_data`](_data.md) section, and applies it as if the shape were declared inline. No further indirection is permitted — typedef terms must have a concrete inline shape.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_typedef"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_type_key_term_typedef",
  "_lid" : "typedef",
  "_nid" : "_type_key_term"
}
```
