# `_kind_term_object`

**`_title`**

Object Definition

**`_definition`**

An enumeration element indicating that the term is an object definition — a term that carries a [`_rule`](_rule.md) section defining the schema of a structured object: which properties are required, recommended, forbidden, or automatically managed.

**`_description`**

[`_kind_term_object`](_kind_term_object.md) is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as an object definition — any term that carries a [`_rule`](_rule.md) section.

Object definitions are referenced by other terms via [`_type_object`](_type_object.md) and [`_kind_object`](_kind_object.md) in their [`_data`](_data.md) section, constraining values to conform to the declared schema. They may also carry a [`_data`](_data.md) section simultaneously — for example, a term can be both a descriptor (defining the type of a value) and an object definition (defining the schema of that value when it is an object).

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_object"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "object"
  ],
  "_gid" : "_kind_term_object",
  "_lid" : "object",
  "_nid" : "_kind_term"
}
```
