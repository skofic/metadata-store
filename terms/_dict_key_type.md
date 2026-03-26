# `_dict_key_type`

**`_title`**

Dictionary Key Type

**`_definition`**

The data type of keys in a _dict_key section. A bridge-graph subset of _type_scalar_set restricted to string-compatible types — types that can serve as valid JavaScript object property names and ArangoDB document property keys. Excludes all number types and _type_timestamp.

**`_description`**

[`_dict_key_type`](_dict_key_type.md) is required in every [`_dict_key`](_dict_key.md) section. It is a bridge-graph subset of [`_type_scalar_set`](_type_scalar_set.md) with 20 accepted values, restricted to string-compatible types that can serve as valid object property names. All number types, [`_type_boolean`](_type_boolean.md), and [`_type_timestamp`](_type_timestamp.md) are excluded. Range properties ([`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md)) are not available in the [`_dict_key`](_dict_key.md) context.

**Strings**

- [`_type_string`](_type_string.md) — Generic UTF-8 text; the only string type that accepts [`_regexp`](_regexp.md). Companion properties: [`_regexp`](_regexp.md), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md).
- [`_type_string_URI`](_type_string_URI.md) — Uniform Resource Identifier.
- [`_type_string_HEX`](_type_string_HEX.md) — Hexadecimal value. Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md).
- [`_type_string_email`](_type_string_email.md) — Email address.
- [`_type_string_date`](_type_string_date.md) — Date in JSON Schema `date` format (YYYY-MM-DD).
- [`_type_string_time`](_type_string_time.md) — Time in JSON Schema `time` format (HH:MM:SS).
- [`_type_string_date-time`](_type_string_date-time.md) — Date-time in JSON Schema `date-time` format.
- [`_type_string_YMD`](_type_string_YMD.md) — Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD).
- [`_type_string_Hostname`](_type_string_Hostname.md) — Internet hostname.
- [`_type_string_IPv4`](_type_string_IPv4.md) — IPv4 address.
- [`_type_string_IPv6`](_type_string_IPv6.md) — IPv6 address.

**Keys**

- [`_type_key`](_type_key.md) — A string representing the [`_key`](_key.md) of a document in any collection.
- [`_type_key_term`](_type_key_term.md) — A key that must reference any term.
- [`_type_key_term_enum`](_type_key_term_enum.md) — A key that must reference an enumeration root — the root node of a controlled vocabulary graph.
- [`_type_key_term_enum_element`](_type_key_term_enum_element.md) — A key that must reference an enumeration element — a valid selectable value within a vocabulary.
- [`_type_key_term_descriptor`](_type_key_term_descriptor.md) — A key that must reference a descriptor term (carries a [`_data`](_data.md) section).
- [`_type_key_term_object`](_type_key_term_object.md) — A key that must reference an object definition term (carries a [`_rule`](_rule.md) section).
- [`_type_key_term_predicate`](_type_key_term_predicate.md) — A key that must reference a predicate term.
- [`_type_key_term_typedef`](_type_key_term_typedef.md) — A key that must reference a type definition term.

**Other**

- [`_type_handle`](_type_handle.md) — A string in `<collection>/<_key>` format representing the ArangoDB `_id` of a document.
- [`_type_enum`](_type_enum.md) — The `_gid` of an enumeration element. Companion property: [`_kind_enum`](_kind_enum.md) constrains the controlled vocabulary from which the value is drawn.

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_dict_key_type",
  "_lid" : "type",
  "_nid" : "_dict_key"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_enum" : [
      "_dict_key_type"
    ],
    "_type_scalar" : "_type_enum"
  }
}
```
