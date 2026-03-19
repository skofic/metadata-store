# `_selection-terms_one-none`

**`_title`**

One of or none

**`_definition`**

Selection should contain one term from the set or none.

**`_description`**

The rule determines that either *one* of the terms in the *set* should be part of the *selection*, or the selection should be empty.

The *terms* of the *set* are represented by their *global identifiers*.

---

**`_code`**

```json
{
  "_aid" : [
    "one-none"
  ],
  "_gid" : "_selection-terms_one-none",
  "_lid" : "one-none",
  "_nid" : "_selection-terms"
}
```

**`_data`**

```json
{
  "_class" : "_class_reference",
  "_set" : {
    "_set_scalar" : {
      "_kind" : [
        "_any-term"
      ],
      "_set_type" : "_type_string_key"
    }
  }
}
```
