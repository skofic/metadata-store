# `_type_term_object`

**`_title`**

Object definition

**`_definition`**

The term type indicating that the term is an object definition — a term carrying a `_rule` section that defines the schema for a structured object.

**`_description`**

A term marked `_type_term_object` carries a [`_rule`](_rule.md) section defining which properties are required, recommended, or forbidden in the object. Object definition terms are referenced in [`_object_types`](_object_types.md) companion properties, constraining [`_type_object`](_type_object.md) values to conform to one or more named schemas.

---

**`_code`**

```json
{
	"_nid": "_type_term",
	"_lid": "object",
	"_gid": "_type_term_object",
	"_aid": ["object"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
