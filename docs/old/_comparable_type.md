# `_comparable_type`

**`_title`**

Comparable data type

**`_definition`**

The data type of elements in a `_comparable` section. Required and never empty. Its value must be drawn from the `_type_data_comparable` enumeration — a subset of the full scalar type vocabulary restricted to comparable types.

**`_description`**

[`_comparable_type`](_comparable_type.md) is required in every [`_comparable`](_comparable.md) section. It is a bridge-graph subset of [`_scalar_type`](_scalar_type.md), accepting all scalar type values **except** those that are not comparable: display and markup strings (`_type_string_Markdown`, `_type_string_HTML`, `_type_string_SVG`, `_type_string_LaTeX`, `_type_regexp`) and non-comparable object types (`_type_object`, `_type_struct`, `_type_object_GeoJSON`).

Like [`_scalar_type`](_scalar_type.md), each value activates a conditional rule that governs which companion properties are permitted in the same [`_comparable`](_comparable.md) section.

---

**`_code`**

```json
{
  "_aid" : [
    "type"
  ],
  "_gid" : "_comparable_type",
  "_lid" : "type",
  "_nid" : "_comparable"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_enum_types" : [
      "_type_data_comparable"
    ],
    "_scalar_type" : "_type_enum"
  }
}
```
