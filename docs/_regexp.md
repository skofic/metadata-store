# Regular expression
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_regexp</code></p>

> A regular expression pattern. In the identification section it constrains the format of local identifiers within the namespace; in the data section it constrains the value of string scalars that accept it as a companion property.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `regexp` |
| [Global identifier](_gid.md) | `_regexp` |
| [Official identifiers](_aid.md) | `regexp` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_regexp",
  "_lid" : "regexp",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Regular expression

**[Definition](_definition.md):** A regular expression pattern. In the identification section it constrains the format of local identifiers within the namespace; in the data section it constrains the value of string scalars that accept it as a companion property.

**[Description](_description.md)**

This property stores a regular expression and is used in two distinct contexts:

**In the [identification section](_code.md)**: when present on a namespace-defining term, `_regexp` specifies the pattern that all [local identifiers](_lid.md) within that namespace must satisfy. For example, an ISO 3166-3 namespace term carries a three-uppercase-letter pattern to enforce that every member term's [`_lid`](_lid.md) is a valid alpha-3 code.

**In the [data section](_data.md)**: when present inside a [`_scalar`](_scalar.md) object, `_regexp` constrains the format of the string value the descriptor accepts. It is a companion property of [`_string`](_string.md) (generic UTF-8 strings) and [`_string_HEX`](_string_HEX.md) (hexadecimal strings). Format-specific string types such as `_string_date` or `_string_URI` are self-defining and do not accept a `_regexp` companion.

The value stored in this property is itself a regular expression string.

**[Examples](_examples.md)**

A namespace term enforcing that all member [`_lid`](_lid.md) values are exactly three uppercase letters (ISO 3166-3 country codes):

```json
{
	"_code": {
		"_nid": "ISO",
		"_lid": "3166_3",
		"_gid": "ISO_3166_3",
		"_aid": ["3166_3"],
		"_regexp": "^[A-Z]{3}$"
	}
}
```

A descriptor whose value must be a valid hex colour code:

```json
{
	"_data": {
		"_scalar": {
			"_string": {
				"_regexp": "^#[0-9A-Fa-f]{6}$"
			}
		}
	}
}
```

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
    "ISO_639_3_eng" : "Regular expression"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Regular expression string](_string_regexp.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string_regexp" : {

    }
  }
}
```

</details>
