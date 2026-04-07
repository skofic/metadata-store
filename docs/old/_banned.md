# `_banned`

**`_title`**

Banned properties

**`_definition`**

The set of properties that must never be present in the object, regardless of any other rules. Unconditional and absolute — takes precedence over all other structural constraints, including graph-based conditional rules.

**`_description`**

`_banned` is a property of the [`_rule`](_rule.md) section. Its value is a flat array of descriptor `_gid` strings.

Unlike [`_required`](_required.md) and [`_recommended`](_recommended.md), `_banned` is **unconditional**: it takes precedence over all other rules, including conditional rules carried by graph edges. No `_predicate_value-of` edge can activate a property that `_banned` prohibits.

If a conditional rule's `_path_data` requires a property that appears in `_banned`, this is a conflict — detectable at edge insertion time, not at data validation time. `_banned` entries in a conditional rule object likewise apply unconditionally within their scope and cannot be overridden by further nesting.

**`_examples`**

Banning [`_regexp`](_regexp.md) from number scalar types (it is only meaningful for generic strings):

```json
{"_banned": ["_regexp"]}
```

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
  "_array" : {
    "_scalar" : {
      "_scalar_type" : "_type_key_term_descriptor"
    }
  }
}
```
