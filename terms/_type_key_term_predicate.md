# `_type_key_term_predicate`

**`_title`**

Predicate key

**`_definition`**

A term key that must reference a predicate term — a term carrying `_type_term_predicate` in its `_term_type`.

**`_description`**

`_type_key_term_predicate` is used when a property value must be the key of a predicate term. Used in edge documents and rule graphs where the predicate of a relationship must be referenced by key.

---

**`_code`**

```json
{
	"_nid": "_type_key_term",
	"_lid": "predicate",
	"_gid": "_type_key_term_predicate",
	"_aid": ["predicate"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
