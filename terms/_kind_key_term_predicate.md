# `_kind_key_term_predicate`

**`_title`**

Predicate Key

**`_definition`**

An enumeration element indicating that the key value must reference a predicate term — a term used as the `_predicate` property of an edge document to qualify the nature of a relationship between two nodes.

**`_description`**

`_kind_key_term_predicate` constrains a [`_type_key`](_type_key.md) scalar to reference only predicate terms. A predicate term is a term whose `_gid` is used as the value of the `_predicate` property in an edge document, qualifying the nature of the relationship between the `_from` and `_to` nodes.

Predicate terms belong to the `_predicate_*` family — for example `_predicate_enum-of`, `_predicate_section-of`, `_predicate_bridge-of`, and `_predicate_value-of`. In the [`_domn`](_domn.md) section, [`_kind_term`](_kind_term.md) uses the value `_kind_term_predicate` to flag a term as a predicate.

```json
{
	"_scalar": {
		"_type": "_type_key",
		"_kind_key": ["_kind_key_term_predicate"]
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "term_predicate"
  ],
  "_gid" : "_kind_key_term_predicate",
  "_lid" : "term_predicate",
  "_nid" : "_kind_key"
}
```
