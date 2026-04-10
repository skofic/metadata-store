# `_term_key_typedef`

**`_title`**

Type definition term document key

**`_definition`**

A term key that must reference a typedef term — a term that defines a reusable data shape.

**`_description`**

`_term_key_typedef` is the type of the [`_typedef`](_typedef.md) property in a [`_data`](_data.md) section. It constrains the reference to point only at terms declared as reusable type definitions, preventing accidental references to ordinary descriptors. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key_typedef": {}
	}
}
```

Stored values: `"_type_scalar"`, `"_type_set"`, `"_type_key"`.

---

**`_code`**

```json
{
  "_aid" : [
    "typedef"
  ],
  "_gid" : "_term_key_typedef",
  "_lid" : "typedef",
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
