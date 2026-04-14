# Enumerated value
<p style="color: #888; margin-top: -0.5em;"><code>_enum</code></p>

> The scalar data type for enumeration values — strings that must be the `_gid` of a valid enumeration element within a controlled vocabulary. The optional `_enums` companion property constrains which vocabularies are accepted.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `enum` |
| [Global identifier](_gid.md) | `_enum` |
| [Official identifiers](_aid.md) | `enum` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "enum",
  "_gid": "_enum",
  "_aid": [
    "enum"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumerated value

**[Definition](_definition.md):** The scalar data type for enumeration values — strings that must be the `_gid` of a valid enumeration element within a controlled vocabulary. The optional `_enums` companion property constrains which vocabularies are accepted.

**[Description](_description.md)**

`_enum` declares that the value is the [`_gid`](_gid.md) of an enumeration element term. The optional [`_enums`](_enums.md) companion property holds a set of enumeration root `_gid`s that constrain which controlled vocabularies the value may be drawn from; when absent, any enumeration element from any vocabulary is accepted. Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Enumerated value"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
        "_enums"
      ]
    }
  }
}
```

</details>
