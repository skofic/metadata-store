# `_default-value`

**`_title`**

Default Values

**`_definition`**

A dictionary mapping descriptor `_gid`s to default values that are applied at insertion time when those properties are absent from the object. Defaults are applied before `_required` is checked, so a property with a default value will always satisfy a requirement for it.

**`_description`**

`_default-value` is a property of the [`_rule`](_rule.md) section. It is a dictionary whose keys are descriptor `_gid`s and whose values are the defaults to apply when the corresponding property is absent at insertion time.

The application order at insertion is:

1. Apply `_default-value` defaults for any absent properties.
2. Compute [`_computed`](_computed.md) properties.
3. Check [`_required`](_required.md) constraints.

This ordering allows a property to be both listed in `_default-value` and required: if the user omits it, the default fills it in and validation then succeeds.

Default values are **schema-local**: the same descriptor can have different defaults in different object schemas. The default value must be compatible with the descriptor's own `_data` type; this is enforced by the validation layer at insertion time.

```json
{
	"_rule": {
		"_default-value": {
			"chr_status": "active",
			"chr_confidence": 1.0
		}
	}
}
```

If `chr_status` or `chr_confidence` are absent when an object of this type is inserted, they are filled in automatically before validation runs.

---

**`_code`**

```json
{
  "_aid" : [
    "default-value"
  ],
  "_gid" : "_default-value",
  "_lid" : "default-value",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_dict" : {
    "_dict_key" : {
      "_kind_key" : [
        "_kind_key_term_descriptor"
      ],
      "_type_key" : "_type_key"
    },
    "_dict_value" : {

    }
  }
}
```
