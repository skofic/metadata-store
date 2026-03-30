# `_immutable`

**`_title`**

Immutable properties

**`_definition`**

Properties that, once set — whether by the user or by the system — cannot be modified or deleted. Enforced at the application layer after the first value is written.

**`_description`**

`_immutable` is a property of the [`_rule`](_rule.md) section. Its value is a flat array of descriptor `_gid` strings.

Immutability takes effect after the first value is written: the value cannot subsequently be changed or removed. This makes `_immutable` appropriate for identifiers and relationship endpoints whose modification after insertion would break referential integrity — for example, `_lid` and [`_gid`](_gid.md) in the identification section.

Unlike [`_locked`](_locked.md) properties, `_immutable` properties *may* be set by the user on first write; they simply cannot be changed afterward. A property can be both [`_computed`](_computed.md) and `_immutable` — the system sets it once and no further modification is permitted by anyone.

**`_examples`**

```json
{"_immutable": ["_lid", "_gid"]}
```

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
  "_array" : {
    "_scalar" : {
      "_scalar_type" : "_type_key_term_descriptor"
    }
  }
}
```
