# `_kind_term_descriptor`

**`_title`**

Descriptor

**`_definition`**

An enumeration element indicating that the term is a descriptor — a term that carries a `_data` section defining the type, shape, and constraints of a data variable. Descriptors are the fundamental building blocks used to type the properties of objects and the columns of datasets.

**`_description`**

`_kind_term_descriptor` is a role value used in the [`_kind_term`](_kind_term.md) property of the [`_domn`](_domn.md) section. It flags the term as a descriptor — any term that carries a [`_data`](_data.md) section.

A descriptor defines what kind of data a variable holds: its scalar type (boolean, number, string, enumeration, object, etc.), its shape (scalar, array, set, tuple, dictionary), and any applicable constraints (valid range, regexp, unit). Descriptors are referenced in object schemas via `_predicate_property-of` edges, and their `_gid` values appear as property keys in `_type_object` values.

A term may be a descriptor and simultaneously hold other roles — for example, a term can be both a descriptor and an enumeration element if it also participates in a controlled vocabulary graph.

```json
{
	"_domn": {
		"_kind_term": ["_kind_term_descriptor"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "descriptor"
  ],
  "_gid" : "_kind_term_descriptor",
  "_lid" : "descriptor",
  "_nid" : "_kind_term"
}
```
