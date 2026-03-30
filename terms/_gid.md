# `_gid`

**`_title`**

Global identifier

**`_definition`**

The unique identifier of the term across the entire dictionary. Computed as the concatenation of the namespace identifier and the local identifier, separated by an underscore. Copied to the document key before the record is stored.

**`_description`**

The global identifier uniquely identifies a term across the entire dictionary. It is computed from the [namespace identifier](_nid.md) and the [local identifier](_lid.md) according to the following rules:

| `_nid` value          | `_gid` formula         | Example          |
|-----------------------|------------------------|------------------|
| Present and non-empty | `_nid` + `_` + `_lid` | `ISO_3166_3_ITA` |
| Empty string `""`     | `_` + `_lid`           | `_code`          |
| Absent                | `_lid`                 | `ISO`            |

Because `_gid` is computed before the document is stored, it is a plain string value — not a reference to an existing document. The computed value is copied to the ArangoDB document key (`_key`), making it the primary key within the terms collection and enforcing uniqueness across the dictionary.

**`_examples`**

`ISO_3166_3_ITA` is the global identifier of the Italy term: namespace `ISO_3166_3` concatenated with local identifier `ITA` via an underscore:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA"
	}
}
```

`_code` is the global identifier of a core dictionary term: an empty-string namespace produces a leading underscore:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "code",
		"_gid": "_code"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "gid",
	"_gid": "_gid",
	"_aid": ["gid"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_string",
		"_regexp": "^[a-zA-Z0-9\\-_:.@+,=;$!*'%()]{1,254}$"
	}
}
```

**`_domn`**

```json
{}
```
