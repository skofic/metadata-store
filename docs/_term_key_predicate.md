# `_term_key_predicate`

**`_title`**

Predicate term document key

**`_definition`**

A term key that must reference a predicate term — a term that represents a relationship type in the dictionary graph.

**`_description`**

`_term_key_predicate` is used when a property value must be the `_gid` of a predicate term. Predicate terms are elements of the [`_predicate`](_predicate.md) controlled vocabulary and qualify the nature of directed edges in the graph. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key_predicate": {}
	}
}
```

Stored values: `"_predicate_enum-of"`, `"_predicate_property-of"`.

---

**`_code`**

```json
{
  "_aid" : [
    "predicate"
  ],
  "_gid" : "_term_key_predicate",
  "_lid" : "predicate",
  "_nid" : "_term_key"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
