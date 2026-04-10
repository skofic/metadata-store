# `_term_key_descriptor`

**`_title`**

Descriptor term document key

**`_definition`**

A term key that must reference a descriptor — a term carrying a `_data` section.

**`_description`**

`_term_key_descriptor` is used when a property value must be the `_gid` of a descriptor term. A descriptor is any term that carries a [`_data`](_data.md) section. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_term_key_descriptor": {}
	}
}
```

Stored values: `"_string_date"`, `"_number_float"`, `"_enum"`.

---

**`_code`**

```json
{
  "_nid": "_term_key",
  "_lid": "descriptor",
  "_gid": "_term_key_descriptor",
  "_aid": [
    "descriptor"
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
