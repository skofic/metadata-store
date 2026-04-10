# `_term_key`

**`_title`**

Term document key

**`_definition`**

The scalar data type for term document keys. The stored value is the `_gid` of any term in the terms collection, without constraining the term's role. Parent type of the `_term_key_*` sub-types, which add role constraints.

**`_description`**

`_term_key` declares that the value is the [`_gid`](_gid.md) of a term document. As a parent type, it is the root of [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md), [`_term_key_predicate`](_term_key_predicate.md), and [`_term_key_typedef`](_term_key_typedef.md), which further constrain the referenced term's role. When none of the sub-types is specific enough, `_term_key` accepts any term regardless of role. No companion properties apply. Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key": {}
	}
}
```

Stored values: `"_string_date"`, `"ISO_639_3_eng"`, `"_predicate_enum-of"`.

---

**`_code`**

```json
{
  "_nid": "_term",
  "_lid": "key",
  "_gid": "_term_key",
  "_aid": [
    "key"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {}
  }
}
```
