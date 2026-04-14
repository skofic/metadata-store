# Hexadecimal string
<p style="color: #888; margin-top: -0.5em;"><code>_string_HEX</code></p>

> The scalar data type for hexadecimal strings (digits 0–9 and letters A–F or a–f). Comparable; string range constraints and unit properties apply. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `HEX` |
| [Global identifier](_gid.md) | `_string_HEX` |
| [Official identifiers](_aid.md) | `HEX` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "HEX",
  "_gid": "_string_HEX",
  "_aid": [
    "HEX"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Hexadecimal string"
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
        "_regexp",
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```

</details>
