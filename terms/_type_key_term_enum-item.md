# `_type_key_term_enum-item`

**`_title`**

Enumeration option key

**`_definition`**

A term key that must reference a valid enumeration element — a term reachable from an enumeration root via `_predicate_enum-of` edges.

**`_description`**

`_type_key_term_enum-item` is used when a property value must be the key of an enumeration element term. The referenced term must be reachable (directly or through sections or bridges) from at least one enumeration root.

---

**`_code`**

```json
{
	"_nid": "_type_key_term",
	"_lid": "enum-item",
	"_gid": "_type_key_term_enum-item",
	"_aid": ["enum-item"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
