# `_type_term_enum-root`

**`_title`**

Enumeration root

**`_definition`**

The term type indicating that the term is the root of a controlled vocabulary — all valid values for a `_type_enum` property must be descendants of one of these roots.

**`_description`**

A term marked `_type_term_enum-root` defines the root node of a controlled vocabulary graph. Valid enumeration values are reachable from one of these roots via [`_predicate_enum-of`](_predicate_enum-of.md) edges (skipping [`_predicate_section-of`](_predicate_section-of.md) nodes during validation). Enumeration roots are referenced in [`_enum_types`](_enum_types.md) companion properties.

---

**`_code`**

```json
{
	"_nid": "_type_term",
	"_lid": "enum-root",
	"_gid": "_type_term_enum-root",
	"_aid": ["enum-root"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
