# `_kind_key_term_descriptor`

**`_title`**

Descriptor Key

**`_definition`**

An enumeration element indicating that the key value must reference a descriptor term — a term that carries a `_data` section defining the type and shape of a data variable.

**`_description`**

`_kind_key_term_descriptor` constrains a [`_type_key`](_type_key.md) scalar to reference only descriptor terms. A descriptor is any term that carries a [`_data`](_data.md) section — it defines the type, shape, and constraints of a data variable in the dictionary.

This qualifier is used when a property must point to a data variable definition. For example, a property that identifies which descriptor governs the values of a dataset column would use `_kind_key_term_descriptor`.

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_descriptor"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term_descriptor"
  ],
  "_gid" : "_kind_key_term_descriptor",
  "_lid" : "term_descriptor",
  "_nid" : "_kind_key"
}
```
