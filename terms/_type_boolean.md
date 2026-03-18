# `_type_boolean`

**`_title`**

Boolean

**`_definition`**

Scalar data type for a true/false boolean value. No companion `_kind` property is needed or expected.

**`_description`**

When [`_type`](_type.md) is set to `_type_boolean`, the descriptor value must be a native boolean — either `true` or `false`. This is the simplest scalar type: it carries no companion qualifier, no unit, no range, and no format constraint. Any [`_scalar`](_scalar.md) section that selects `_type_boolean` is complete as-is.

---

**`_code`**

```json
{
  "_aid" : [
    "boolean"
  ],
  "_gid" : "_type_boolean",
  "_lid" : "boolean",
  "_nid" : "_type"
}
```
