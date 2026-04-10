# `_string_HEX`

**`_title`**

Hexadecimal string

**`_definition`**

The scalar data type for hexadecimal strings (digits 0–9 and letters A–F or a–f). Comparable; string range constraints and unit properties apply. A sub-type of `_string`.

**`_description`**

`_string_HEX` declares that the value is a hexadecimal string. Lexicographic range constraints may be applied. Unit properties are permitted for hex values that represent physical quantities (e.g. memory addresses, colour codes). A [`_regexp`](_regexp.md) may further constrain the length or case. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

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

---

**`_code`**

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

**`_data`**

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
