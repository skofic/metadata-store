# `_object_types`

**`_title`**

Object definitions

**`_definition`**

A set of object definition term `_gid`s identifying the schemas the value must conform to. The value must satisfy at least one of the listed schemas. When absent, the only requirement is that all properties are valid descriptor `_gid`s.

**`_description`**

`_object_types` is an optional companion to [`_scalar_type`](_scalar_type.md) when its value is `_type_object`. It constrains which object schemas the value must satisfy.

Each element in the set is the [`_gid`](_gid.md) of an object definition term — a term carrying a [`_rule`](_rule.md) section that defines the required and permitted properties. A value is accepted if it conforms to **at least one** of the listed schemas.

When `_object_types` is absent, the value is accepted as long as all of its properties correspond to descriptor term `_gid`s defined in the dictionary.

**`_examples`**

An object value that must conform to the [`_range`](_range.md) schema:

```json
{"_scalar": {"_scalar_type": "_type_object", "_object_types": ["_range"]}}
```

---

**`_code`**

```json
{
  "_aid" : [
    "types"
  ],
  "_gid" : "_object_types",
  "_lid" : "types",
  "_nid" : "_object"
}
```

**`_data`**

```json
{
  "_set" : {
    "_comparable" : {
      "_comparable_type" : "_type_key_term_object"
    }
  }
}
```
