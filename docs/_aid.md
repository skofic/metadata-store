# Official identifiers
<p style="color: #888; margin-top: -0.5em;"><code>_aid</code></p>

> The set of all official, externally recognised identifiers by which this term can be referenced. Computed: defaults to the local identifier if not supplied. Grows as alias terms point to this term.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `aid` |
| [Global identifier](_gid.md) | `_aid` |
| [Official identifiers](_aid.md) | `aid` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Official identifiers

**[Definition](_definition.md):** The set of all official, externally recognised identifiers by which this term can be referenced. Computed: defaults to the local identifier if not supplied. Grows as alias terms point to this term.

**[Description](_description.md)**

This set collects every official or widely recognised identifier that can be used to reference the term — not just the dictionary's own [local identifier](_lid.md), but any standard code that an external source would use for the same concept.

The property is **required** and **computed**: because [`_lid`](_lid.md) is a public identifier for the dictionary, the system initialises `_aid` to `[_lid]` if it is absent when a term is created. It is not immutable — when alias terms point to this term, their [`_lid`](_lid.md) values are appended to this set, keeping a consolidated list of all the codes by which the concept is officially known.

Keep this set restricted to official or standardised identifiers. Provider-specific or ad hoc names belong in [provider identifiers](_pid.md) instead.

**[Examples](_examples.md)**

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

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Official identifiers"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_string" : {

    }
  }
}
```

</details>
