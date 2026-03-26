# `_aid`

**`_title`**

All identifiers

**`_definition`**

The set of all official, externally recognised identifiers by which this term can be referenced. Automatically initialised to contain the local identifier if not supplied.

**`_description`**

This set collects all *official* or *globally recognised* identifiers that can be used to *reference* the term.

The [local identifier](_lid.md) is a public identifier for this dictionary, so this property is **required** and **computed**: if absent when a term is created or modified, the system initialises it to [`_lid`](_lid.md). 

*Alias enumeration elements* should store their [local identifiers](_lid.md) in this set, so that the *official element* can be *identified* also when using *alternative codes*.

Keep this set restricted to *official* or *widely recognised* standards. *Ad hoc* or *provider-specific* identifiers belong in [provider identifiers](_pid.md) instead.

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

`ITA` is the primary code for Italy under ISO 3166-1 alpha-3, and `IT` is the corresponding alpha-2 code. Both are official ISO identifiers, so both appear in [`_aid`](_aid.md).

---

**`_code`**

```json
{
  "_aid" : [
    "aid"
  ],
  "_gid" : "_aid",
  "_lid" : "aid",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_set" : {
    "_scalar_set" : {
      "_type_scalar_set" : "_type_string"
    }
  }
}
```
