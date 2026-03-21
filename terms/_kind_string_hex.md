# `_kind_string_HEX`

**`_title`**

Hexadecimal

**`_definition`**

An enumeration element indicating that the string value is a hexadecimal representation. The value consists exclusively of hexadecimal digits (0–9, A–F) and encodes a binary or numeric quantity as a base-16 string.

**`_description`**

`_kind_string_HEX` qualifies a [`_type_string`](_type_string.md) scalar as a hexadecimal string. Typical uses include colour codes, hash digests, binary identifiers, and memory addresses. Unlike a generic string, the value is constrained to the character set `[0-9A-Fa-f]`; the `_regexp` property may be used to further constrain length or casing.

String range properties (`_valid-range_string`, `_normal-range_string`) are applicable when ordering hex values lexicographically is meaningful.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_HEX",
		"_regexp": "^[0-9A-Fa-f]{6}$"
	}
}
```

This descriptor accepts a six-character hex colour code such as `FF5733`.

---

**`_code`**

```json
{
  "_aid" : [
    "HEX"
  ],
  "_gid" : "_kind_string_HEX",
  "_lid" : "HEX",
  "_nid" : "_kind_string"
}
```
