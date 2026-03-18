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
	"_nid": "ISO_3166_1",
	"_lid": "ITA",
	"_gid": "ISO_3166_1_ITA",
	"_aid": ["ITA", "IT"],
	"_name": "Italia",
	"_regexp": "[A-Z]{3,3}",
	"_emoji": "🇮🇹"
}
```

`ITA` is the local identifier of this term. Concatenated with the namespace `ISO_3166_1` and separated by an underscore, it forms the [global identifier](_gid.md) `ISO_3166_1_ITA`.



```json
{
	"_lid": "ISO",
	"_gid": "ISO",
	"_aid": ["ISO"]
}
```

This term has no [namespace](_nid.md): the local identifier and global identifier share the same value, `ISO`.

---

**`_code`**

```json
{
  "_aid" : [
    "lid"
  ],
  "_gid" : "_lid",
  "_lid" : "lid",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_regexp" : "^[a-zA-Z0-9\\-:.@+,=;$!*'%()]{1,254}$",
    "_type" : "_type_string"
  }
}
```
