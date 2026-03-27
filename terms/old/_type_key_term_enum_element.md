# `_type_key_term_enum_element`

**`_title`**

Enumeration Element Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference a valid enumeration element — a selectable node within a controlled vocabulary graph, reachable from an enumeration root via [`_predicate_enum-of`](_predicate_enum-of.md) edges.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_enum_element`, the descriptor accepts only keys of valid enumeration elements — terms connected to an enumeration root by a [`_predicate_enum-of`](_predicate_enum-of.md) edge, representing one of the allowed choices within a controlled vocabulary.

This type is the key-based analogue of [`_type_enum`](_type_enum.md): both constrain a value to an enumeration element, but [`_type_enum`](_type_enum.md) stores the `_gid` of the element while `_type_key_term_enum_element` stores its `_key` (which equals `_gid` for dictionary terms).

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_enum_element"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "element"
  ],
  "_gid" : "_type_key_term_enum_element",
  "_lid" : "element",
  "_nid" : "_type_key_term_enum"
}
```
