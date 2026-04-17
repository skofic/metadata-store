# Hexadecimal string
<p><a href="_term_role_data-type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_HEX</code></p>

> The scalar data type for hexadecimal strings (digits 0–9 and letters A–F or a–f). Comparable; string range constraints and unit properties apply. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `HEX` |
| [Global identifier](_gid.md) | `_string_HEX` |
| [Official identifiers](_aid.md) | `HEX` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "HEX"
  ],
  "_gid" : "_string_HEX",
  "_lid" : "HEX",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Hexadecimal string

**[Definition](_definition.md):** The scalar data type for hexadecimal strings (digits 0–9 and letters A–F or a–f). Comparable; string range constraints and unit properties apply. A sub-type of `_string`.

**[Description](_description.md)**

`_string_HEX` declares that the value is a hexadecimal string. Lexicographic range constraints may be applied. Unit properties are permitted for hex values that represent physical quantities (e.g. memory addresses, colour codes). A [`_regexp`](_regexp.md) may further constrain the length or case. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

A six-character hex colour code:

```json
{
	"_scalar": {
		"_string_HEX": {
			"_regexp": "^[0-9A-Fa-f]{6}$"
		}
	}
}
```

Stored values: `"FF0000"`, `"deadbeef"`, `"0A1B2C3D"`.

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
    "ISO_639_3_eng" : "Hexadecimal string"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Regular expression](_regexp.md) · [Valid string range](_range_valid_string.md) · [Normal string range](_range_normal_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_regexp",
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```

</details>
