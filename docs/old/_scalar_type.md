# `_scalar_type`

**`_title`**

Scalar type

**`_definition`**

The data type of a scalar value. Required whenever the `_scalar` section is not empty. Its value must be one of the enumeration elements of the `_type_data` vocabulary, and it governs which companion properties are permitted in the same `_scalar` section.

**`_description`**

`_scalar_type` is required in every non-empty [`_scalar`](_scalar.md) section. Its value must be drawn from the [`_type_data`](_type_data.md) enumeration. Each value it holds activates a conditional rule (via a [`_predicate_value-of`](_predicate_value-of.md) graph edge) that defines the exact set of companion properties permitted alongside it.

Two subset enumerations are derived from the full type vocabulary via bridge graphs:

- [`_comparable_type`](_comparable_type.md) — comparable types usable as elements in [`_set`](_set.md) and [`_nested`](_nested.md). Excludes display/markup strings (`_type_string_Markdown`, `_type_string_HTML`, `_type_string_SVG`, `_type_string_LaTeX`) and non-comparable objects (`_type_object`, `_type_struct`, `_type_object_GeoJSON`).
- [`_dict_key_type`](_dict_key_type.md) — string-compatible types usable as dictionary keys. A further subset of [`_comparable_type`](_comparable_type.md), excluding all number types and `_type_timestamp`.

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_scalar_type",
  "_lid" : "type",
  "_nid" : "_scalar"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_enum_types" : [
      "_type_data"
    ],
    "_scalar_type" : "_type_enum"
  }
}
```
