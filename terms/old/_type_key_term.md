# `_type_key_term`

**`_title`**

Term Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference any dictionary term, regardless of its role or structure.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term`, the descriptor accepts any string that is the `_key` of an existing term document — descriptor, namespace, enumeration root, alias, or any other kind. Use this value when the property needs to reference a term but the specific role of that term is not constrained. For stricter constraints, use one of the more specific `_type_key_term_*` values.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term"
  ],
  "_gid" : "_type_key_term",
  "_lid" : "term",
  "_nid" : "_type_key"
}
```
