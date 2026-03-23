# `_type_scalar_set`

**`_title`**

Set Scalar Type

**`_definition`**

The data type of elements in a [`_set_scalar`](_set_scalar.md) section. A bridge-graph subset of [`_type_scalar`](_type_scalar.md) restricted to comparable types — types for which equality and ordering are well-defined. Excluded: display/markup strings ([`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_SVG`](_type_string_SVG.md), [`_type_string_LaTeX`](_type_string_LaTeX.md), [`_type_string_regexp`](_type_string_regexp.md)); and non-comparable objects ([`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), [`_type_object_GeoJSON`](_type_object_GeoJSON.md)).

**`_description`**

[`_type_scalar_set`](_type_scalar_set.md) is required in every non-empty [`_set_scalar`](_set_scalar.md) section. It is a bridge-graph subset of [`_type_scalar`](_type_scalar.md) with 26 accepted values. Excluded: display/markup strings ([`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_SVG`](_type_string_SVG.md), [`_type_string_LaTeX`](_type_string_LaTeX.md), [`_type_string_regexp`](_type_string_regexp.md)) and non-comparable objects ([`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), [`_type_object_GeoJSON`](_type_object_GeoJSON.md)).

**Numbers**

- [`_type_number`](_type_number.md) — Accepts both integer and floating-point values. Companion properties: [`_decimals`](_decimals.md), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md).
- [`_type_number_float`](_type_number_float.md) — A floating-point number that must be stored as float. Companion properties: [`_decimals`](_decimals.md), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md).
- [`_type_number_integer`](_type_number_integer.md) — A whole number; no decimal part and [`_decimals`](_decimals.md) is not permitted. Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md).

**Strings**

- [`_type_string`](_type_string.md) — Generic UTF-8 text; the only string type that accepts [`_regexp`](_regexp.md). Companion properties: [`_regexp`](_regexp.md), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
- [`_type_string_URI`](_type_string_URI.md) — Uniform Resource Identifier.
- [`_type_string_HEX`](_type_string_HEX.md) — Hexadecimal value. Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
- [`_type_string_email`](_type_string_email.md) — Email address.
- [`_type_string_date`](_type_string_date.md) — Date in JSON Schema `date` format (YYYY-MM-DD). Companion properties: [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
- [`_type_string_time`](_type_string_time.md) — Time in JSON Schema `time` format (HH:MM:SS). Companion properties: [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
- [`_type_string_date-time`](_type_string_date-time.md) — Date-time in JSON Schema `date-time` format. Companion properties: [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
- [`_type_string_YMD`](_type_string_YMD.md) — Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD). Companion properties: [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md).
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

**Other**

- [`_type_boolean`](_type_boolean.md) — A true/false boolean value; no companion properties.
- [`_type_handle`](_type_handle.md) — A string in `<collection>/<_key>` format representing the ArangoDB `_id` of a document.
- [`_type_enum`](_type_enum.md) — The `_gid` of an enumeration element. Companion property: [`_kind_enum`](_kind_enum.md) constrains the controlled vocabulary from which the value is drawn.
- [`_type_timestamp`](_type_timestamp.md) — An integer Unix timestamp (seconds since 1 January 1970 UTC). Companion properties: [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md).


---

**`_code`**

```json
{
  "_aid" : [
    "scalar_set"
  ],
  "_gid" : "_type_scalar_set",
  "_lid" : "set",
  "_nid" : "_type_scalar"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_enum" : [
      "_type_scalar_set"
    ],
    "_type_scalar" : "_type_enum"
  }
}
```
