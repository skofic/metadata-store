# `_kind_key_term_object`

**`_title`**

Object Definition Key

**`_definition`**

An enumeration element indicating that the key value must reference an object definition term — a term that carries a `_rule` section defining the schema of a structured object.

**`_description`**

`_kind_key_term_object` constrains a [`_type_key`](_type_key.md) scalar to reference only object definition terms. An object definition is any term that carries a [`_rule`](_rule.md) section — it defines the required, recommended, and forbidden properties of a structured object, and may be referenced by `_kind_object` in a `_scalar` section to impose a schema on object values.

This qualifier is used when a property must point to a schema definition. For example, a property that declares which object schema a dataset record must conform to would use `_kind_key_term_object`.

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_object"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term_object"
  ],
  "_gid" : "_kind_key_term_object",
  "_lid" : "term_object",
  "_nid" : "_kind_key"
}
```
