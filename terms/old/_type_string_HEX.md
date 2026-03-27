# `_type_string_HEX`

**`_title`**

Hexadecimal

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a hexadecimal string. The value consists exclusively of hexadecimal digits (0–9, A–F) and encodes a binary or numeric quantity as a base-16 string.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_HEX`, the descriptor value is a hexadecimal string. Typical uses include colour codes, hash digests, binary identifiers, and memory addresses. The value is constrained to the character set `[0-9A-Fa-f]`.

Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md).

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_HEX",
		"_valid-range_string": {
			"_min-range-inclusive_string": "000000",
			"_max-range-inclusive_string": "FFFFFF"
		}
	}
}
```

This descriptor accepts any six-digit hex colour code.

---

**`_code`**

```json
{
  "_aid" : [
    "HEX"
  ],
  "_gid" : "_type_string_HEX",
  "_lid" : "HEX",
  "_nid" : "_type_string"
}
```
