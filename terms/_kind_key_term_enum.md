# `_kind_key_term_enum`

**`_title`**

Enumeration Root Key

**`_definition`**

An enumeration element indicating that the key value must reference an enumeration root term — the root node of a controlled vocabulary graph. The referenced term defines a value domain from which enumeration elements may be drawn.

**`_description`**

`_kind_key_term_enum` constrains a [`_type_key`](_type_key.md) scalar to reference only enumeration root terms. An enumeration root is a term that acts as the root of a controlled vocabulary graph: other terms are linked to it via `_predicate_enum-of` edges, forming the set of valid selectable values.

This qualifier is used when a property must point to a vocabulary definition rather than to a specific value within that vocabulary. For example, a property that names the controlled vocabulary a descriptor draws its values from would use `_kind_key_term_enum`.

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_enum"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term_enum"
  ],
  "_gid" : "_kind_key_term_enum",
  "_lid" : "term_enum",
  "_nid" : "_kind_key"
}
```
