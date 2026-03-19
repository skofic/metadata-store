# `_computed`

**`_title`**

Computed Properties

**`_definition`**

A set of descriptor `_gid`s whose values are automatically set by the system when not provided by the user. Computed values are resolved before `_required` is checked, so a computed property can simultaneously be required — the system fills it in if absent and validation then confirms its presence.

**`_description`**

`_computed` is a property of the [`_rule`](_rule.md) section. It lists properties whose values the system derives automatically if the user does not supply them — for example, `_gid` computed from `_nid` and `_lid`.

The computation order at insertion time is:

1. Apply [`_default-value`](_default-value.md) defaults.
2. Compute `_computed` properties.
3. Check [`_required`](_required.md) constraints.

This ordering means a property can be listed in both `_computed` and `_required`: the system computes it first, and the presence check then succeeds.

`_computed` differs from [`_locked`](_locked.md) in that the user may optionally supply the value — the system only intervenes when it is absent. For properties that the system owns exclusively, use `_locked` instead.

```json
{
	"_rule": {
		"_computed": ["_gid", "_key"],
		"_immutable": ["_gid", "_key"]
	}
}
```

`_gid` and `_key` are computed by the system if absent, and once set they cannot be changed.

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
      "_kind_key" : [
        "_kind_key_term_descriptor"
      ],
      "_set_type" : "_type_key"
    }
  }
}
```
