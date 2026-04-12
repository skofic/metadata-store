# `_term_role_type`

**`_title`**

Data type

**`_definition`**

A term role indicating that the term defines a data type within the dictionary's type system. User-assigned.

**`_description`**

Terms tagged with `_term_role_type` represent named data types — the type keys that appear inside [`_scalar`](_scalar.md), [`_set`](_set.md), [`_nested`](_nested.md), and [`_dict_key`](_dict_key.md) objects. Examples from the core dictionary include [`_number`](_number.md), [`_string`](_string.md), [`_boolean`](_boolean.md), and [`_enum`](_enum.md).

This role is assigned by the user, not computed automatically. It signals that the term's primary purpose is to define a type for use in the type-as-key convention, rather than to represent a generic variable or a real-world entity.

**`_notes`**

The `_term_role_type` classification can be used by validator implementations to trigger type-specific validation code when processing the `_data` section of descriptor terms. By querying which terms carry this role, a validator can dynamically load or dispatch the correct validation routine for each type key it encounters.

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_term_role_type",
  "_lid" : "type",
  "_nid" : "_term_role"
}
```
