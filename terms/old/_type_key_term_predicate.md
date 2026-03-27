# `_type_key_term_predicate`

**`_title`**

Predicate Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference a predicate term — a term used as the [`_predicate`](_predicate.md) property of an edge document to qualify the nature of a relationship between two nodes.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_predicate`, the descriptor accepts only keys of predicate terms — terms whose `_gid` is used as the value of the [`_predicate`](_predicate.md) property in an edge document. Predicate terms belong to the `_predicate_*` family: [`_predicate_enum-of`](_predicate_enum-of.md), [`_predicate_section-of`](_predicate_section-of.md), [`_predicate_bridge-of`](_predicate_bridge-of.md), [`_predicate_value-of`](_predicate_value-of.md), and so on.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_predicate"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_type_key_term_predicate",
  "_lid" : "predicate",
  "_nid" : "_type_key_term"
}
```
