# `_aid`

**`_title`**

Official identifiers

**`_definition`**

The set of all official, externally recognised identifiers by which this term can be referenced. Computed: defaults to the local identifier if not supplied. Grows as alias terms point to this term.

**`_description`**

This set collects every official or widely recognised identifier that can be used to reference the term — not just the dictionary's own [local identifier](_lid.md), but any standard code that an external source would use for the same concept.

The property is **required** and **computed**: because [`_lid`](_lid.md) is a public identifier for the dictionary, the system initialises `_aid` to `[_lid]` if it is absent when a term is created. It is not immutable — when alias terms point to this term, their [`_lid`](_lid.md) values are appended to this set, keeping a consolidated list of all the codes by which the concept is officially known.

Keep this set restricted to official or standardised identifiers. Provider-specific or ad hoc names belong in [provider identifiers](_pid.md) instead.

**`_examples`**

The ISO 3166-3 term for Italy carries the alpha-3 code `ITA` as its [`_lid`](_lid.md), and the alpha-2 code `IT` as an additional official identifier in `_aid`:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA", "IT", "I"]
	}
}
```

`ITA` (alpha-3), `IT` (alpha-2), and `I` (IOC code) are all official identifiers for Italy, so all three appear in `_aid`.

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
    "_string" : {

    }
  }
}
```
