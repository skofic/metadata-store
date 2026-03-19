# `_banned`

**`_title`**

Banned Properties

**`_definition`**

A set of descriptor `_gid`s that must never appear in the object. If any banned property is present the object is invalid. Unconditional and absolute — takes precedence over all other rules including conditional graph rules.

**`_description`**

`_banned` is a property of the [`_rule`](_rule.md) section. Its value is a flat set of descriptor `_gid`s. If any of the listed properties is present in the object, validation fails — the object is considered invalid, not simply cleaned up.

`_banned` is **unconditional and absolute**. It takes precedence over all other rules, including conditional rules expressed in the graph layer via `_predicate_value-of` edges. No conditional rule can activate a property that `_banned` prohibits. If a conditional rule's `_path_data` requires a banned property, that is a conflict detectable at edge insertion time.

`_banned` applies in both open and closed schema modes and is not affected by the value of [`_closed`](_closed.md). A property should not appear in both `_banned` and [`_recommended`](_recommended.md).

```json
{
	"_rule": {
		"_banned": ["_data", "_rule"]
	}
}
```

An object of this type must never contain `_data` or `_rule` properties, regardless of any other rule that might otherwise permit them.

---

**`_code`**

```json
{
  "_aid" : [
    "banned"
  ],
  "_gid" : "_banned",
  "_lid" : "banned",
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
