# `_nid`

**`_title`**

Namespace identifier

**`_definition`**

The global identifier of the term that defines the namespace of the current term. When present and non-empty, it is prepended to the local identifier to form the global identifier. When absent, the term defines a top-level namespace with no parent.

**`_description`**

Namespaces group and organise [terms](_term.md) under a common category or classification. The value of `_nid` is the [global identifier](_gid.md) of the term that represents the namespace of the current term.

Namespaces also disambiguate [local identifiers](_lid.md): a local identifier must be unique only within its namespace, not across the entire dictionary.

Three distinct cases exist depending on the value of this property:

- **Non-empty string**: the term belongs to the named namespace. The namespace term must itself exist in the dictionary.
- **Empty string** (`""`): the term is a core dictionary building block. The resulting [global identifier](_gid.md) begins with an underscore, marking it as a structural term. This is the only case where `_nid` does not reference an existing term.
- **Absent**: the term defines a top-level namespace with no parent.

Any term's [global identifier](_gid.md) may serve as a namespace for other terms, allowing namespaces to form chains from general to specific — for example `ISO` → `ISO_3166` → `ISO_3166_3`.

**`_examples`**

A term whose namespace is `ISO_3166_3` — the `_nid` must be the `_gid` of an existing term:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA"
	}
}
```

A core dictionary term with an empty-string namespace — `_nid` is `""` and `_gid` begins with an underscore:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "code",
		"_gid": "_code"
	}
}
```

A top-level namespace term with `_nid` absent — `_lid` and `_gid` are equal:

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
	"_lid": "nid",
	"_gid": "_nid",
	"_aid": ["nid"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_key_term"
	}
}
```

**`_domn`**

```json
{}
```
