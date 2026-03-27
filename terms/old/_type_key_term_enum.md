# `_type_key_term_enum`

**`_title`**

Enumeration Root Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference an enumeration root term — the root node of a controlled vocabulary graph.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_enum`, the descriptor accepts only keys of enumeration root terms. An enumeration root is a term that acts as the root of a controlled vocabulary graph — other terms are linked to it via [`_predicate_enum-of`](_predicate_enum-of.md) edges, forming the set of valid selectable values.

This type is used when a property must point to a vocabulary definition rather than to a specific value within that vocabulary — for example, the [`_kind_enum`](_kind_enum.md) property stores enumeration root keys.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_enum"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_type_key_term_enum",
  "_lid" : "enum",
  "_nid" : "_type_key_term"
}
```
