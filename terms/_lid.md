# `_lid`

**`_title`**

Local identifier

**`_definition`**

The unique identifier of the term within its namespace. Combined with the namespace identifier, it forms the global identifier. This property is required and immutable once set.

**`_description`**

Terms are *uniquely identified* by their [global identifier](_gid.md), which is the concatenation of the [namespace](_nid.md) identifier and this *local identifier*, separated by an underscore (`_`) token.

The local identifier must be *unique within its [namespace](_nid.md)*. It cannot contain the underscore character, which is reserved as the namespace separator. The allowed character set is defined by the regular expression in the data section of this term.

This property is *required* on every term and is *immutable* once set — changing it would alter the term's [global identifier](_gid.md) and invalidate all references to it.

**`_examples`**

```json
{
	"_nid": "iso_3166_1",
	"_lid": "ITA",
	"_gid": "iso_3166_1_ITA",
	"_aid": ["ITA", "IT"],
	"_name": "Italia",
	"_regexp": "[A-Z]{3,3}"
}
```

`ITA` is the local identifier of this term. Concatenated with the namespace `iso_3166_1` and separated by an underscore, it forms the [global identifier](_gid.md) `iso_3166_1_ITA`.



```json
{
	"_lid": "iso",
	"_gid": "iso",
	"_aid": ["iso"]
}
```

This term has no [namespace](_nid.md): the local identifier and global identifier share the same value, `iso`.
