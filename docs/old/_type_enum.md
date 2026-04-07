# `_type_enum`

**`_title`**

Enumeration

**`_definition`**

The scalar data type for enumeration values — strings that must be the `_gid` of a valid enumeration element within a controlled vocabulary.

**`_description`**

`_type_enum` declares that the value is the [`_gid`](_gid.md) of an enumeration element term. The optional [`_enum_types`](_enum_types.md) companion property constrains which controlled vocabularies the value may be drawn from; when absent, any enumeration element from any vocabulary is accepted. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_type_enum",
  "_lid" : "enum",
  "_nid" : "_type"
}
```
