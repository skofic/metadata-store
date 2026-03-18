# `_kind_number_integer`

**`_title`**

Integer

**`_definition`**

An enumeration element indicating that the numeric value is an integer — a whole number with no fractional part. When present in `_kind_number`, the descriptor accepts only values without a decimal component. The `_decimals` property is not applicable.

**`_description`**

`_kind_number_integer` is one of the two allowed values of the [`_kind_number`](_kind_number.md) qualifier. It indicates that the numeric value must be a whole number — no fractional part is accepted.

When `_kind_number` contains only `_kind_number_integer`, the descriptor rejects any value with a decimal component. When `_kind_number` contains both `_kind_number_integer` and `_kind_number_float`, both whole and fractional values are accepted.

Note that ArangoDB stores all numbers as double-precision floating-point internally. The integer constraint is a semantic rule enforced by the dictionary's validation layer, not a storage-level distinction.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_integer"],
		"_valid-range": {
			"_min-range-inclusive": 0
		}
	}
}
```

This descriptor accepts any non-negative integer value.

---

**`_code`**

```json
{
  "_aid" : [
    "integer"
  ],
  "_gid" : "_kind_number_integer",
  "_lid" : "integer",
  "_nid" : "_kind_number"
}
```
