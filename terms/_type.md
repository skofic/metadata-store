# `_type`

**`_title`**

Data Type Namespace

**`_definition`**

Namespace for all data type terms used in the data dictionary. All `_type_*` terms belong to this namespace. The actual type descriptor properties are [`_type_scalar`](_type_scalar.md) (in [`_scalar`](_scalar.md) sections), [`_type_scalar_set`](_type_scalar_set.md) (in [`_type_scalar_set`](_type_scalar_set.md) sections), and [`_dict_key_type`](_dict_key_type.md) (in [`_dict_key`](_dict_key.md) sections).

**`_description`**

The [`_type`](_type.md) term serves as the **namespace root** for all data type terms: [`_type_boolean`](_type_boolean.md), [`_type_number`](_type_number.md), [`_type_number_float`](_type_number_float.md), [`_type_number_integer`](_type_number_integer.md), [`_type_string`](_type_string.md), [`_type_string_Markdown`](_type_string_Markdown.md), and so on.

The actual property descriptors for specifying data types in data sections are:

- [`_type_scalar`](_type_scalar.md): required in [`_scalar`](_scalar.md) sections.
- [`_type_scalar_set`](_type_scalar_set.md): required in [`_type_scalar_set`](_type_scalar_set.md) sections (comparable types only).
- [`_dict_key_type`](_dict_key_type.md): required in [`_dict_key`](_dict_key.md) sections (string-compatible types only).

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_type",
  "_lid" : "type",
  "_nid" : ""
}
```
