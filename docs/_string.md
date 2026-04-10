# `_string`

**`_title`**

String

**`_definition`**

The scalar data type for generic UTF-8 strings. Short, indexable text suitable for use as a tag, database field, or dictionary key. Parent type of all `_string_*` sub-types; `_regexp` may constrain the accepted format.

**`_description`**

`_string` serves a dual role. As a type key inside [`_scalar`](_scalar.md), it declares that the value is any UTF-8 string. [`_regexp`](_regexp.md) may be used to constrain the accepted format. As a parent type, it is the root of all `_string_*` sub-types, which carry their own format constraint and do not accept [`_regexp`](_regexp.md).

Unlike [`_text`](_text.md), `_string` values are expected to be short and indexable — suitable for use as tags, property names, or dictionary keys. Comparable; may appear in sets and as dictionary keys.

**`_examples`**

A string constrained by a regular expression:

```json
{
	"_scalar": {
		"_string": {
			"_regexp": "^[A-Z]{2,3}$"
		}
	}
}
```

An unconstrained string:

```json
{
	"_scalar": {
		"_string": {}
	}
}
```

Stored values: `"hello"`, `"IT"`, `"john.doe"`, `"2024-01-15"`.

---

**`_code`**

```json
{
  "_nid": "",
  "_lid": "string",
  "_gid": "_string",
  "_aid": [
    "string"
  ]
}
```

**`_data`**

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
        "_unit",
        "_unit_name",
        "_unit_symbol",
        "_range_valid_string",
        "_range_normal_string",
        "_regexp"
      ]
    }
  }
}
```
