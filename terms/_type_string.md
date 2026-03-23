# `_type_string`

**`_title`**

String

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a generic UTF-8 string with no format constraint. It is the only string type that accepts [`_regexp`](_regexp.md) for pattern validation. It also serves as the namespace parent for all `_type_string_*` format-specific variants, which are direct `_type_scalar` values in their own right.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string`, the descriptor value is a generic UTF-8 string. It is the only string type that accepts [`_regexp`](_regexp.md) — format-specific variants (`_type_string_Markdown`, `_type_string_date`, etc.) are self-defining and do not permit [`_regexp`](_regexp.md).

Companion properties for `_type_string`: [`_regexp`](_regexp.md), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md), [`_normal-range_string`](_normal-range_string.md).

When a specific encoding or format is required, use the appropriate `_type_string_*` variant as the `_type_scalar` value directly — not as a companion to `_type_string`.

**`_examples`**

**Generic string with regexp** — a three-letter uppercase code:

```json
{
	"_scalar": {
		"_type_scalar": "_type_string",
		"_regexp": "^[A-Z]{3}$"
	}
}
```

Accepts values such as `ITA` or `ENG`. [`_regexp`](_regexp.md) is only permitted with `_type_string`.



**Generic string with range** — a string that must sort between two bounds:

```json
{
	"_scalar": {
		"_type_scalar": "_type_string",
		"_valid-range_string": {
			"_min-range-inclusive_string": "A",
			"_max-range-exclusive_string": "Z"
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_type_string",
  "_lid" : "string",
  "_nid" : "_type"
}
```
