# `_enum`

**`_title`**

Enumerated value

**`_definition`**

The scalar data type for enumeration values — strings that must be the `_gid` of a valid enumeration element within a controlled vocabulary. The optional `_enums` companion property constrains which vocabularies are accepted.

**`_description`**

`_enum` declares that the value is the [`_gid`](_gid.md) of an enumeration element term. The optional [`_enums`](_enums.md) companion property holds a set of enumeration root `_gid`s that constrain which controlled vocabularies the value may be drawn from; when absent, any enumeration element from any vocabulary is accepted. Comparable; may appear in sets and as dictionary keys.

**`_examples`**

An enumeration value constrained to ISO 639-3 language codes:

```json
{
	"_scalar": {
		"_enum": {
			"_enums": ["ISO_639_3"]
		}
	}
}
```

An unconstrained enumeration value:

```json
{
	"_scalar": {
		"_enum": {}
	}
}
```

Stored values (enumeration element `_gid`s): `"ISO_639_3_eng"`, `"ISO_3166_3_ITA"`, `"ISO_4217_EUR"`.

---

**`_code`**

```json
{
  "_aid" : [
    "enum"
  ],
  "_gid" : "_enum",
  "_lid" : "enum",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_enums"
      ]
    }
  }
}
```
