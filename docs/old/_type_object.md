# `_type_object`

**`_title`**

Object

**`_definition`**

The scalar data type for objects whose properties must be `_gid`s of descriptor terms defined in the dictionary. The optional `_object_types` companion constrains the value to conform to named schemas. Also the root of the object sub-type enumeration.

**`_description`**

`_type_object` serves a dual role. As an enumeration element of [`_type_data`](_type_data.md), it declares that a scalar is an object whose property names must be [`_gid`](_gid.md)s of descriptor terms. The optional [`_object_types`](_object_types.md) companion further constrains the object to conform to one or more named [`_rule`](_rule.md) schemas. As an enumeration root, it is the parent of [`_type_object_GeoJSON`](_type_object_GeoJSON.md). Not a member of [`_type_data_comparable`](_type_data_comparable.md).

---

**`_code`**

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_type_object",
  "_lid" : "object",
  "_nid" : "_type"
}
```
