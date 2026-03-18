# `_type_object`

**`_title`**

Object

**`_definition`**

Scalar data type for a structured object whose property keys must correspond to descriptor `_gid`s defined in the dictionary. The optional companion property `_kind_object` constrains the object to one or more named schemas.

**`_description`**

When [`_type`](_type.md) is set to `_type_object`, the descriptor value is an object in which every property key must be the [`_gid`](_gid.md) of a [descriptor](_term_descriptor.md) defined in the dictionary. The optional companion property [`_kind_object`](_kind_object.md) is a set of object definition term `_gid`s; the value must conform to at least one of the listed schemas. When `_kind_object` is absent, no structural schema is imposed beyond the descriptor-key requirement. The object may be empty.

**`_examples`**

**Schema-constrained object** — a numeric range structure:

```json
{
	"_scalar": {
		"_type": "_type_object",
		"_kind_object": ["_range"]
	}
}
```

The value must conform to the [`_range`](_range.md) schema. A valid value might be `{"_min-range-inclusive": 0, "_max-range-exclusive": 100}`.



**Unconstrained object** — any object whose keys are dictionary descriptors:

```json
{
	"_scalar": {
		"_type": "_type_object"
	}
}
```

No schema is imposed. Every property key must still be the `_gid` of a known descriptor, but any combination of descriptors is accepted. The object may also be empty (`{}`).

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
