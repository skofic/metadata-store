# Regular expression string
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_regexp</code></p>

> The scalar data type for regular expression patterns. The stored value is itself a pattern, not a string to be validated against a pattern. A sub-type of `_string`; comparable but not usable as a dictionary key.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `regexp` |
| [Global identifier](_gid.md) | `_string_regexp` |
| [Official identifiers](_aid.md) | `regexp` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_string_regexp",
  "_lid" : "regexp",
  "_nid" : "_string"
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
    "ISO_639_3_eng" : "Regular expression string"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
