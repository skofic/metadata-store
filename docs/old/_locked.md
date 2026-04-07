# `_locked`

**`_title`**

Locked properties

**`_definition`**

Properties whose values are entirely managed by the system. Unlike computed properties — where the user may optionally supply the value on first write — locked properties are fully opaque to users and cannot be set or modified by them at any point.

**`_description`**

`_locked` is a property of the [`_rule`](_rule.md) section. Its value is a flat array of descriptor `_gid` strings.

Locked properties are set and maintained exclusively by the system, with no user involvement at any stage. This contrasts with [`_computed`](_computed.md) properties: computed properties can be user-provided on first write; locked ones never can be.

ArangoDB's internal properties (`_id`, `_rev`) are canonical examples: the system assigns and updates them; users cannot touch them.

Like [`_immutable`](_immutable.md), a locked property cannot be modified after it is set. The difference is that `_immutable` permits a user-provided initial value, while `_locked` does not — the system is the sole author at every stage.

**`_examples`**

```json
{"_locked": ["_id", "_rev"]}
```

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
  "_array" : {
    "_scalar" : {
      "_scalar_type" : "_type_key_term_descriptor"
    }
  }
}
```
