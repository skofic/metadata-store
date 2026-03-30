# `_type_key_term_typedef`

**`_title`**

Type definition key

**`_definition`**

A term key that must reference a typedef term — a term carrying `_type_term_typedef` in its `_term_type`.

**`_description`**

`_type_key_term_typedef` is the type of the [`_typedef`](_typedef.md) property in a [`_data`](_data.md) section. It constrains the reference to point only at terms declared as reusable type definitions, preventing accidental references to ordinary descriptors.

---

**`_code`**

```json
{
	"_nid": "_type_key_term",
	"_lid": "typedef",
	"_gid": "_type_key_term_typedef",
	"_aid": ["typedef"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
