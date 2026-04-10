# `_term_key_enum-root`

**`_title`**

Enumeration root term document key

**`_definition`**

A term key that must reference an enumeration root — a term that is the root of a controlled vocabulary graph.

**`_description`**

`_term_key_enum-root` is used when a property value must be the `_gid` of an enumeration root term. Typical use: the [`_enums`](_enums.md) companion property, which holds a set of vocabulary root keys that constrain an [`_enum`](_enum.md) value. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key_enum-root": {}
	}
}
```

Stored values: `"ISO_639_3"`, `"ISO_3166_3"`.

---

**`_code`**

```json
{
  "_aid" : [
    "enum-root"
  ],
  "_gid" : "_term_key_enum-root",
  "_lid" : "enum-root",
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
