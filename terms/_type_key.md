# `_type_key`

**`_title`**

Document Key

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a string representing the `_key` of a document in the database, without collection context. More specific variants constrain which kind of term the key may reference: [`_type_key_term`](_type_key_term.md), [`_type_key_term_enum`](_type_key_term_enum.md), and so on.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_key`, the descriptor value is a string that must match the `_key` of an existing document in the database, in any collection. No constraint is imposed on the kind of document. For stricter constraints, use one of the `_type_key_term_*` variants, which are direct `_type_scalar` values that restrict the key to a specific term role.

```json
{
	"_scalar": {
		"_type_scalar": "_type_key"
	}
}
```

**`_examples`**

**Unrestricted key** — the key may reference any document in the database:

```json
{
	"_scalar": {
		"_type_scalar": "_type_key"
	}
}
```

The value may be the `_key` of any document in any collection, for example `ISO_639_3_eng` or `_type_number`.



**Any term** — the key must reference any dictionary term:

```json
{
	"_scalar": {
		"_type_scalar": "_type_key_term"
	}
}
```

Any term in the dictionary is accepted. For stricter constraints, use [`_type_key_term_enum`](_type_key_term_enum.md), [`_type_key_term_descriptor`](_type_key_term_descriptor.md), or another `_type_key_term_*` variant.

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_type_key",
  "_lid" : "key",
  "_nid" : "_type"
}
```
