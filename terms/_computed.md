# `_computed`

**`_title`**

Computed Properties

**`_definition`**

A set of descriptor [`_gid`](_gid.md)s whose values are automatically set by the system when not provided by the user. Computed values are resolved before [`_required`](_required.md) is checked, so a computed property can simultaneously be required — the system fills it in if absent and validation then confirms its presence.

**`_description`**

[`_computed`](_computed.md) is a property of the [`_rule`](_rule.md) section. It lists properties whose values the system derives automatically if the user does not supply them — for example, [`_gid`](_gid.md) computed from [`_nid`](_nid.md) and [`_lid`](_lid.md).

The computation order at insertion time is:

1. Apply [`_default-value`](_default-value.md) defaults.
2. Compute [`_computed`](_computed.md) properties.
3. Check [`_required`](_required.md) constraints.

This ordering means a property can be listed in both [`_computed`](_computed.md) and [`_required`](_required.md): the system computes it first, and the presence check then succeeds.

[`_computed`](_computed.md) differs from [`_locked`](_locked.md) in that the user may optionally supply the value — the system only intervenes when it is absent. For properties that the system owns exclusively, use [`_locked`](_locked.md) instead.

```json
{
	"_rule": {
		"_computed": ["_gid", "_key"],
		"_immutable": ["_gid", "_key"]
	}
}
```

[`_gid`](_gid.md) and [`_key`](_key.md) are computed by the system if absent, and once set they cannot be changed.

---

**`_code`**

```json
{
  "_aid" : [
    "computed"
  ],
  "_gid" : "_computed",
  "_lid" : "computed",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_type_scalar_set" : "_type_key_term_descriptor"
    }
  }
}
```
