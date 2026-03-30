# `_name`

**`_title`**

Name

**`_definition`**

The human-readable name of the term, used when the term has an official or well-established name that is distinct from its identifier.

**`_description`**

This property holds a name for the term — a human-readable label that is more descriptive or recognisable than the [local identifier](_lid.md). It is typically used in two situations:

- When the term has an official denomination in its domain: the full name of a country in its native language, the registered name of a standard, or the native script of a language.
- When the identifier alone would be opaque to a reader unfamiliar with the naming convention.

This property is a plain string with no language tag: it records the name as it naturally appears in its own script or language. Multilingual labels intended for display in a user interface belong in the [documentation section](_info.md)'s [title](_title.md) property instead.

**`_examples`**

The native name of the Cantonese language, written in Chinese script — distinct from its identifier `yue`:

```json
{
	"_code": {
		"_nid": "ISO_639_3",
		"_lid": "yue",
		"_gid": "ISO_639_3_yue",
		"_name": "粵語 / 粤语"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "name",
	"_gid": "_name",
	"_aid": ["name"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_string"
	}
}
```

**`_domn`**

```json
{}
```
