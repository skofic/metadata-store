# `_immutable`

**`_title`**

Immutable Properties

**`_definition`**

A set of descriptor [`_gid`](_gid.md)s whose values, once written — whether by the user or the system — cannot be modified or deleted. The initial write is permitted; all subsequent changes are rejected.

**`_description`**

[`_immutable`](_immutable.md) is a property of the [`_rule`](_rule.md) section. It lists properties that are frozen after their first write. A typical example is [`_key`](_key.md) (the ArangoDB primary key): it is set once at insertion and is permanent.

[`_immutable`](_immutable.md) differs from [`_locked`](_locked.md): a locked property cannot be written by users at all. An immutable property can be written once — by the user or by the system via [`_computed`](_computed.md) — and is then frozen.

If a property is both [`_computed`](_computed.md) and [`_immutable`](_immutable.md), the system sets it on first insertion and it cannot be changed thereafter. This is the standard pattern for stable identifiers.

```json
{
	"_rule": {
		"_required": {
			"_selection-descriptors_all": ["_lid"]
		},
		"_computed": ["_gid", "_key"],
		"_immutable": ["_lid", "_gid", "_key"]
	}
}
```

[`_lid`](_lid.md) is required and immutable once set. [`_gid`](_gid.md) and [`_key`](_key.md) are computed from [`_lid`](_lid.md) and are also immutable.

---

**`_code`**

```json
{
  "_aid" : [
    "immutable"
  ],
  "_gid" : "_immutable",
  "_lid" : "immutable",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_scalar_set" : {
      "_type_scalar_set" : "_type_key_term_descriptor"
    }
  }
}
```
