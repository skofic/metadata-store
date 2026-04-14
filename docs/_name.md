# Name
<p style="color: #888; margin-top: -0.5em;"><code>_name</code></p>

> The human-readable name of the term, used when the term has an official or well-established name that is distinct from its identifier.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `name` |
| [Global identifier](_gid.md) | `_name` |
| [Official identifiers](_aid.md) | `name` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "name",
  "_gid": "_name",
  "_aid": [
    "name"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Name

**[Definition](_definition.md):** The human-readable name of the term, used when the term has an official or well-established name that is distinct from its identifier.

**[Description](_description.md)**

This property holds a name for the term — a human-readable label that is more descriptive or recognisable than the [local identifier](_lid.md). It is typically used in two situations:

- When the term has an official denomination in its domain: the full name of a country in its native language, the registered name of a standard, or the native script of a language.
- When the identifier alone would be opaque to a reader unfamiliar with the naming convention.

This property is a plain string with no language tag: it records the name as it naturally appears in its own script or language. Multilingual labels intended for display in a user interface belong in the [documentation section](_info.md)'s [title](_title.md) property instead.

**[Examples](_examples.md)**

The native name of the Cantonese language, written in Chinese script — distinct from its identifier `yue`:

```json
{
	"_code": {
		"_nid": "ISO_639_3",
		"_lid": "yue",
		"_gid": "ISO_639_3_yue",
		"_aid": ["yue"],
		"_name": "粵語 / 粤语"
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Name"
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

**Shape:** [Scalar](_scalar.md) — [Generic string](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_string": {}
  }
}
```

</details>
