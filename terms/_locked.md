# `_locked`

**`_title`**

Locked Properties

**`_definition`**

A set of descriptor [`_gid`](_gid.md)s that are entirely managed by the system and cannot be set or modified by users at any time. The system writes these values exclusively.

**`_description`**

[`_locked`](_locked.md) is a property of the [`_rule`](_rule.md) section. It lists properties whose values the system owns completely — users cannot set, modify, or delete them. A typical example is [`_rev`](_rev.md) (the ArangoDB revision token), which the database manages internally.

[`_locked`](_locked.md) differs from [`_computed`](_computed.md): a computed property can be supplied by the user (the system only fills it in when absent). A locked property is opaque to users entirely — any value provided by the user for a locked property is silently discarded or rejected.

[`_locked`](_locked.md) differs from [`_immutable`](_immutable.md): an immutable property can be set once (by the user or system) and is then frozen. A locked property is never accessible to users at all — not even for the initial write.

```json
{
	"_rule": {
		"_computed": ["_rev"],
		"_locked": ["_rev"]
	}
}
```

[`_rev`](_rev.md) is computed and set by the database; users cannot interact with it.

---

**`_code`**

```json
{
  "_aid" : [
    "locked"
  ],
  "_gid" : "_locked",
  "_lid" : "locked",
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
