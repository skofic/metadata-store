# `_type_struct`

**`_title`**

Structure

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a free-form object whose properties need not be defined in the dictionary. No companion properties are expected.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_struct`, the descriptor value is an object with no constraints on its property keys — they need not correspond to any term in the dictionary. This type is used for opaque or externally-defined structures where property names are determined by an external convention rather than the dictionary schema. No companion properties are applicable. The object may be empty.

**`_examples`**

**Free-form metadata block** — an externally-defined structure attached to a record:

```json
{
	"_scalar": {
		"_type_scalar": "_type_struct"
	}
}
```

The value may be any object, including an empty one. Property keys are not validated against the dictionary. This is appropriate for attaching provider-specific metadata whose structure is defined outside the dictionary, for example:

```json
{
	"source_system": "LabTrack",
	"import_batch": "2024-Q1",
	"flags": ["reviewed", "approved"]
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "struct"
  ],
  "_gid" : "_type_struct",
  "_lid" : "struct",
  "_nid" : "_type"
}
```
