# `_selection-descriptors_one-none`

**`_title`**

One of or none

**`_definition`**

Selection should contain one descriptor from the set or none.

**`_description`**

The rule determines that either *one* of the descriptors in the *set* should be part of the *selection*, or the selection should be empty.

The *descriptors* of the *set* are represented by their *global identifiers*.

---

**`_code`**

```json
{
  "_aid" : [
    "one-none"
  ],
  "_gid" : "_selection-descriptors_one-none",
  "_lid" : "one-none",
  "_nid" : "_selection-descriptors"
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
