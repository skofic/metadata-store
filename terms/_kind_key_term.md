# `_kind_key_term`

**`_title`**

Term Key

**`_definition`**

An enumeration element indicating that the key value may reference any term in the dictionary, regardless of the term's role or structure. No further constraint is imposed on the term type.

**`_description`**

`_kind_key_term` is the least restrictive value of the [`_kind_key`](_kind_key.md) qualifier. When present in `_kind_key`, the `_type_key` scalar accepts any string that is the `_key` of an existing term document — descriptor, namespace, enumeration root, alias, or any other kind.

Use this value when the property needs to reference a term but the specific role of that term is not constrained. For stricter constraints, use one of the more specific `_kind_key_term_*` values.

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term"
  ],
  "_gid" : "_kind_key_term",
  "_lid" : "term",
  "_nid" : "_kind_key"
}
```
