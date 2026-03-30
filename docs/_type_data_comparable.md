# `_type_data_comparable`

**`_title`**

Comparable data types

**`_definition`**

Root of the bridge-graph subset of `_type_data` containing all comparable scalar data types — those that support ordering and equality, enabling their use in set elements and range constraints.

**`_description`**

`_type_data_comparable` is a bridge-graph sub-enumeration of [`_type_data`](_type_data.md). A type is comparable if it supports a defined ordering, which is required for set uniqueness (in [`_set`](_set.md)) and for applying range constraints. Excluded from this subset are: [`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), [`_type_object_GeoJSON`](_type_object_GeoJSON.md), and the formatted-string section types ([`_type_string_HTML`](_type_string_HTML.md), [`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_LaTeX`](_type_string_LaTeX.md), [`_type_string_SVG`](_type_string_SVG.md)). All other `_type_data` values are comparable.

---

**`_code`**

```json
{
  "_aid" : [
    "comparable"
  ],
  "_gid" : "_type_data_comparable",
  "_lid" : "comparable",
  "_nid" : "_type_data"
}
```
