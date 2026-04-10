# `_enums`

**`_title`**

Controlled vocabularies

**`_definition`**

The companion property of `_enum` that constrains the value to elements of one or more specified controlled vocabularies. Its value is a set of enumeration root `_gid`s; each must identify a term that is the root of a controlled vocabulary graph.

**`_description`**

`_enums` is an optional companion property of [`_enum`](_enum.md). When present, the [`_enum`](_enum.md) value must be the `_gid` of an element that belongs to at least one of the listed enumeration roots. When absent, any enumeration element from any controlled vocabulary is accepted.

Each element in `_enums` must be the `_gid` of an enumeration root term. The data type of `_enums` itself is a set of [`_term_key_enum-root`](_term_key_enum-root.md) values.

**`_examples`**

Restricting an `_enum` value to ISO 639-3 or ISO 639-1 language codes:

```json
{
	"_scalar": {
		"_enum": {
			"_enums": ["ISO_639_3", "ISO_639_1"]
		}
	}
}
```

Stored values: `["ISO_639_3"]` (single vocabulary), `["ISO_639_3", "ISO_639_1"]` (two vocabularies), `["ISO_3166_3"]` (country codes only).

---

**`_code`**

```json
{
  "_nid": "",
  "_lid": "enums",
  "_gid": "_enums",
  "_aid": [
    "enums"
  ]
}
```

**`_data`**

```json
{
  "_set": {
    "_term_key_enum-root": {}
  }
}
```
