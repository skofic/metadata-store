# `_default-value`

**`_title`**

Default value

**`_definition`**

A key/value dictionary mapping descriptor `_gid`s to default values applied at insertion time when the corresponding property is absent. Defaults are applied before `_required` is checked, so a property with a default value always satisfies a requirement for it.

**`_description`**

`_default-value` is a property of the [`_rule`](_rule.md) section. Its value is a dictionary whose keys are descriptor [`_gid`](_gid.md) strings and whose values are the defaults to apply at insertion time.

Defaults are applied **before** [`_required`](_required.md) validation: if the user omits a property that has a default, the system fills it in, and validation then succeeds. This makes it possible to guarantee required properties without forcing users to supply them explicitly.

Each default value must conform to the type definition of the corresponding descriptor. Defaults interact with other rule properties as follows:

- A property can be in both `_default-value` and `_required` — the default guarantees the requirement is met.
- A property with a default may also be [`_immutable`](_immutable.md) — the default is applied once and cannot be changed.
- A property with a default must **not** appear in [`_banned`](_banned.md) — that would be a conflict.

**`_examples`**

```json
{
	"_default-value": {"chr_status": "active", "chr_confidence": 1.0, "chr_version": 1}
}
```

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
      "_dict_key_type" : "_type_key_term_descriptor"
    },
    "_dict_value" : {

    }
  }
}
```
