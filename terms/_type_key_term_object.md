# `_type_key_term_object`

**`_title`**

Object Definition Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference an object definition term — a term that carries a [`_rule`](_rule.md) section defining the schema of a structured object.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_object`, the descriptor accepts only keys of object definition terms — terms that carry a [`_rule`](_rule.md) section defining required, recommended, and forbidden properties. This type is used when a property must point to a schema definition. The [`_kind_object`](_kind_object.md) companion property uses this type to list the schemas an object value must conform to.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_object"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_type_key_term_object",
  "_lid" : "object",
  "_nid" : "_type_key_term"
}
```
