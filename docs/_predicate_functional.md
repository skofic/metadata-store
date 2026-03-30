# `_predicate_functional`

**`_title`**

Functional predicates

**`_definition`**

The sub-vocabulary of predicates that carry domain meaning and are followed during graph traversal. Groups `_predicate_enum-of`, `_predicate_property-of`, `_predicate_field-of`, and `_predicate_value-of`.

**`_description`**

Functional predicates define semantically significant relationships between terms. They are the predicates followed during graph traversal — validation, element lookup, and schema evaluation all act on functional predicate edges.

The four functional predicates and their roles:

- [`_predicate_enum-of`](_predicate_enum-of.md): declares an element's membership in a controlled vocabulary.
- [`_predicate_property-of`](_predicate_property-of.md): declares a descriptor's membership in a schema, and optionally activates presence-triggered rules.
- [`_predicate_field-of`](_predicate_field-of.md): declares a descriptor's membership in a form or data-table layout.
- [`_predicate_value-of`](_predicate_value-of.md): declares a value's role within a specific property, and activates value-triggered conditional rules.

As a sub-enumeration root, `_predicate_functional` may be used in [`_enum_types`](_enum_types.md) to constrain a property to functional predicates only.

---

**`_code`**

```json
{
	"_nid": "_predicate",
	"_lid": "functional",
	"_gid": "_predicate_functional",
	"_aid": ["functional"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root"]
}
```
