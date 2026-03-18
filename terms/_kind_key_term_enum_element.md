# `_kind_key_term_enum_element`

**`_title`**

Enumeration Element Key

**`_definition`**

An enumeration element indicating that the key value must reference a valid enumeration element — a selectable node within a controlled vocabulary graph, reachable from an enumeration root via `_predicate_enum-of` edges.

**`_description`**

`_kind_key_term_enum_element` constrains a [`_type_key`](_type_key.md) scalar to reference only valid enumeration elements. An enumeration element is a term connected to an enumeration root by a `_predicate_enum-of` edge — it represents one of the allowed choices within a controlled vocabulary.

This qualifier is the key-based analogue of [`_type_enum`](_type_enum.md): both constrain a value to an enumeration element, but `_type_enum` stores the `_gid` of the element while `_type_key` with `_kind_key_term_enum_element` stores its `_key` (which equals `_gid` for dictionary terms).

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_enum_element"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term_enum_element"
  ],
  "_gid" : "_kind_key_term_enum_element",
  "_lid" : "term_enum_element",
  "_nid" : "_kind_key"
}
```
