# Regular expression string
<p style="color: #888; margin-top: -0.5em;"><code>_string_regexp</code></p>

> The scalar data type for regular expression patterns. The stored value is itself a pattern, not a string to be validated against a pattern. A sub-type of `_string`; comparable but not usable as a dictionary key.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `regexp` |
| [Global identifier](_gid.md) | `_string_regexp` |
| [Official identifiers](_aid.md) | `regexp` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "regexp",
  "_gid": "_string_regexp",
  "_aid": [
    "regexp"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Regular expression string

**[Definition](_definition.md):** The scalar data type for regular expression patterns. The stored value is itself a pattern, not a string to be validated against a pattern. A sub-type of `_string`; comparable but not usable as a dictionary key.

**[Description](_description.md)**

`_string_regexp` declares that the value is a regular expression string. This is distinct from the [`_regexp`](_regexp.md) companion property: [`_regexp`](_regexp.md) holds a *validation pattern* applied to a string value; `_string_regexp` declares that the *stored value itself* is a pattern. No companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_regexp": {}
	}
}
```

Stored values: `"^[A-Z]{2,3}$"`, `"\d{4}-\d{2}-\d{2}"`, `"^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Regular expression string"
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
    "_closed": {}
  }
}
```

</details>
