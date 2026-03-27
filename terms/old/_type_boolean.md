# `_type_boolean`

**`_title`**

Boolean

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a true/false boolean value. No companion properties are needed or expected.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_boolean`, the descriptor value must be a native boolean — either `true` or `false`. This is the simplest scalar type: it carries no companion properties, no unit, no range, and no format constraint. Any [`_scalar`](_scalar.md) section that sets `_type_boolean` is complete as-is.

```json
{
	"_scalar": {
		"_type_scalar": "_type_boolean"
	}
}
```

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
