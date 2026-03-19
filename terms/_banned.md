# `_banned`

**`_title`**

Banned properties

**`_definition`**

List of banned properties.

**`_description`**

This field contains a [descriptors selection rule](_selection-descriptors.md) that determines which *set* of *descriptors* must *not* be *included* in the [data structure definition](_type_object.md) of the *object*.

The selection *values* must be the [global identifier](_gid.md) of the *descriptors* that are *forbidden* from being *included* in the *object data structure*.

This rule should be evaluated at the *end* of the *validation workflow* and should *not trigger* an *error*: all banned properties should simply be *removed*.

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
  "_class" : "_class_reference",
  "_set" : {
    "_set_scalar" : {
      "_kind" : [
        "_any-descriptor"
      ],
      "_set_type" : "_type_string_key"
    }
  }
}
```
