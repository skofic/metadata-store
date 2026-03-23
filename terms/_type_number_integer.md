# `_type_number_integer`

**`_title`**

Integer

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an integer — a whole number with no fractional part. [`_decimals`](_decimals.md) is not applicable.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_number_integer`, the descriptor accepts only whole numbers; any value with a decimal component is rejected. ArangoDB stores all numbers as double-precision floating-point internally — the integer constraint is enforced by the validation layer, not at the storage level.

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_integer",
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
  "_gid" : "_type_number_integer",
  "_lid" : "integer",
  "_nid" : "_type_number"
}
```
