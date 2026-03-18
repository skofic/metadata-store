# `_type_key`

**`_title`**

Document Key

**`_definition`**

Scalar data type for a string representing the `_key` of a document in the database. The optional companion property `_kind_key` restricts which category of term the key may reference.

**`_description`**

When [`_type`](_type.md) is set to `_type_key`, the descriptor value is a string that must match the [`_key`](_key.md) of an existing document in the database. The optional companion property [`_kind_key`](_kind_key.md) is a set that constrains the category of term the key may point to — for example, only descriptors, only enumeration roots, or any term. When `_kind_key` is absent, the key may reference a document in any collection without restriction.

**`_examples`**

**Unrestricted** — the key may reference any document in the database:

```json
{
	"_scalar": {
		"_type": "_type_key"
	}
}
```

The value may be the `_key` of any document in any collection, for example `ISO_639_3_eng` or `_type_number`.



**Any term** — the key must reference any dictionary term:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term"]
	}
}
```

Any term in the dictionary is accepted — whether it is a descriptor, a namespace, an enumeration root, or any other kind. For example `_type_number` or `ISO_639_3_eng`.



**Enumeration root** — the key must reference a controlled vocabulary root:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_enum"]
	}
}
```

Only terms that serve as the root of a controlled vocabulary graph are accepted — for example `ISO_639_3` or `ISO_3166_1`, not their elements.



**Enumeration element** — the key must reference a valid controlled vocabulary choice:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_enum_element"]
	}
}
```

Only enumeration elements are accepted — terms reachable from a root via [`_predicate_enum-of`](_predicate_enum-of.md) edges. For example `ISO_639_3_eng` or `ISO_3166_1_ITA`.



**Object definition** — the key must reference a schema term:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_object"]
	}
}
```

Only terms carrying a [`_rule`](_rule.md) section are accepted — terms that define an object schema. For example `_term` or `_edge`.



**Descriptor** — the key must reference a descriptor term:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_descriptor"]
	}
}
```

Only terms carrying a [`_data`](_data.md) section are accepted. For example `_type` or `_kind_number`.

**Predicate** — the key must reference a predicate term:

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_predicate"]
	}
}
```

Only terms used as predicates in edge documents are accepted — for example `_predicate_enum-of` or `_predicate_section-of`.

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
