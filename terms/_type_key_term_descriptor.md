# `_type_key_term_descriptor`

**`_title`**

Descriptor Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a key that must reference a descriptor term — a term that carries a [`_data`](_data.md) section defining the type and shape of a data variable.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key_term_descriptor`, the descriptor accepts only keys of descriptor terms — terms that carry a [`_data`](_data.md) section. This type is used when a property must point to a data variable definition. For example, a property that identifies which descriptor governs the values of a dataset column would use this type.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term_descriptor"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "descriptor"
  ],
  "_gid" : "_type_key_term_descriptor",
  "_lid" : "descriptor",
  "_nid" : "_type_key_term"
}
```
