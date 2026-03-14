# `_gid`

**`_title`**

Global identifier

**`_definition`**

The unique identifier of the term across the entire dictionary. Computed as the concatenation of the namespace identifier and the local identifier, separated by an underscore. Read-only: the value is set by the system and copied to the document key before the record is stored.

**`_description`**

Terms are *uniquely identified* by their *global identifier*, computed as the concatenation of the [namespace](_nid.md) identifier and the [local identifier](_lid.md), separated by an underscore (`_`) token. Because this value is *computed at storage time*, it is *read-only* — it cannot be set or modified directly by the user.

This value is also *copied* to the [document key](_key.md), making it the primary key of the document within its collection.

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

`iso_3166_1_ITA` is the global identifier of this term: the concatenation of the namespace `iso_3166_1` and the local identifier `ITA`, joined by an underscore.



```json
{
	"_lid": "iso",
	"_gid": "iso",
	"_aid": ["iso"]
}
```

This is the `iso` top-level namespace term. It has no [namespace](_nid.md), so the local identifier and global identifier share the same value, `iso`.

---

**`_data`**

```json
{
  "_scalar" : {
    "_regexp" : "^[a-zA-Z0-9\\-_:.@+,=;$!*'%()]{1,254}$",
    "_type" : "_type_string"
  }
}
```
