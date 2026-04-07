# `_type_string`

**`_title`**

String

**`_definition`**

The scalar data type for generic UTF-8 strings. Also the root of the string sub-type enumeration, grouping formatted, internet, timestamp, and encoded string variants.

**`_description`**

`_type_string` serves a dual role. As an enumeration element of [`_type_data`](_type_data.md), it declares that a scalar accepts any UTF-8 string; [`_regexp`](_regexp.md) may be used to validate the value format. As an enumeration root, it is the parent of the string sub-type sections and their children. Unlike `_type_string`, the format-specific sub-types carry their own format constraint and do not accept [`_regexp`](_regexp.md). A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_type_string",
  "_lid" : "string",
  "_nid" : "_type"
}
```
