# `_scalar_set`

**`_title`**

Set scalar

**`_definition`**

The type descriptor for set elements. Structurally identical to the scalar descriptor but uses [`_type_scalar_set`](_type_scalar_set.md) instead of [`_type_scalar`](_type_scalar.md), restricting the allowed types to those that are comparable and can therefore enforce set uniqueness.

**`_description`**

Every [`_set`](_set.md) must contain exactly one `_scalar_set` object. It declares the data type of the set elements using [`_type_scalar_set`](_type_scalar_set.md), which accepts all types from [`_type_scalar`](_type_scalar.md) except those that are not comparable: [`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_HTML`](_type_string_HTML.md), [`_type_string_SVG`](_type_string_SVG.md), [`_type_string_LaTeX`](_type_string_LaTeX.md), [`_type_string_regexp`](_type_string_regexp.md), [`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), and [`_type_object_GeoJSON`](_type_object_GeoJSON.md).

Beyond the type property, `_scalar_set` accepts the same companion properties as [`_scalar`](_scalar.md) — unit, range, [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), and [`_kind_enum`](_kind_enum.md) — subject to the same value-triggered conditional rules. Those rules are defined in the graph layer and may reuse the same rule edges as `_scalar` via path management.

---

**`_code`**

```json
{
  "_aid" : [
    "set"
  ],
  "_gid" : "_scalar_set",
  "_lid" : "set",
  "_nid" : "_scalar"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_scalar_set"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : {
    "_selection-descriptors_one" : [
      "_type_scalar_set"
    ]
  }
}
```
