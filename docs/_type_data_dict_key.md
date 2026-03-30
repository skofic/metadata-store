# `_type_data_dict_key`

**`_title`**

Dictionary key data types

**`_definition`**

Root of the bridge-graph subset of `_type_data_comparable` containing all types that may serve as dictionary key names. Restricted to string-compatible types that produce valid object property names.

**`_description`**

`_type_data_dict_key` is a bridge-graph sub-enumeration of [`_type_data_comparable`](_type_data_comparable.md). It further restricts the comparable type set to those that are string-compatible — i.e., types whose values can serve as valid JSON object property names. Excluded types include all numeric variants, [`_type_boolean`](_type_boolean.md), [`_type_timestamp`](_type_timestamp.md), and [`_type_regexp`](_type_regexp.md). The accepted types are [`_type_string`](_type_string.md) and its non-formatted sub-types, all `_type_key*` variants, [`_type_handle`](_type_handle.md), and [`_type_enum`](_type_enum.md).

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_type_data_dict_key",
  "_lid" : "key",
  "_nid" : "_type_data_dict"
}
```
