# `_term_key_enum-item`

**`_title`**

Enumeration element term document key

**`_definition`**

A term key that must reference a valid enumeration element — a term reachable from an enumeration root via `_predicate_enum-of` edges.

**`_description`**

`_term_key_enum-item` is used when a property value must be the `_gid` of an enumeration element term. The referenced term must be reachable (directly or through sections or bridges) from at least one enumeration root. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key_enum-item": {}
	}
}
```

Stored values: `"ISO_639_3_eng"`, `"ISO_3166_3_ITA"`.

---

**`_code`**

```json
{
  "_aid" : [
    "enum-item"
  ],
  "_gid" : "_term_key_enum-item",
  "_lid" : "enum-item",
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
