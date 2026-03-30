# `_lid`

**`_title`**

Local identifier

**`_definition`**

The unique identifier of the term within its namespace. Combined with the namespace identifier it forms the global identifier. Required on every term and immutable once set.

**`_description`**

Terms are uniquely identified by their [global identifier](_gid.md), which is the concatenation of the [namespace identifier](_nid.md) and this local identifier, separated by an underscore (`_`). The local identifier must therefore be unique within its namespace; it need not be unique across the entire dictionary.

The allowed character set is restricted to avoid ambiguity: the underscore is reserved as the namespace separator and may not appear in a `_lid`. The accepted pattern is `^[a-zA-Z0-9\-:.@+,=;$!*'%()]{1,254}$`.

This property is required on every term and is immutable once set — changing it would alter the term's [global identifier](_gid.md) and invalidate all references to it.

**`_examples`**

`ITA` is the local identifier of the ISO 3166-3 term for Italy. Combined with the namespace `ISO_3166_3` it forms the global identifier `ISO_3166_3_ITA`:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA"
	}
}
```

For a top-level namespace term with no `_nid`, `_lid` and `_gid` share the same value:

```json
{
	"_code": {
		"_lid": "ISO",
		"_gid": "ISO"
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "lid",
	"_gid": "_lid",
	"_aid": ["lid"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_string",
		"_regexp": "^[a-zA-Z0-9\\-:.@+,=;$!*'%()]{1,254}$"
	}
}
```

**`_domn`**

```json
{}
```
