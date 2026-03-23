# `_aid`

**`_title`**

All identifiers

**`_definition`**

The set of all official, externally recognised identifiers by which this term can be referenced. Automatically initialised to contain the local identifier if not supplied. When alias terms point to this term, their local identifiers are added here as well.

**`_description`**

This set collects all *official* or *globally recognised* identifiers that can be used to *reference* the term — for example, alternative ISO codes assigned by different parts of the same standard.

The [local identifier](_lid.md) is a public identifier for this dictionary, so this property is **required** and **computed**: if absent when a term is created or modified, the system initialises it to `[_lid]`. It is not immutable — when alias terms point to this term, their [local identifiers](_lid.md) are appended to the set.

For *descriptors* (data variables), these identifiers may help *match* the descriptor when processing external datasets that use different naming conventions.

For *enumeration elements*, the set should include all *alternative codes* that correspond to the current [local identifier](_lid.md).

Keep this set restricted to *official* or *widely recognised* standards. Including ad hoc or provider-specific identifiers here reduces its usefulness; those belong in [provider identifiers](_pid.md) instead.

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
    "_set_scalar" : {
      "_type_scalar_set" : "_type_string"
    }
  }
}
```
