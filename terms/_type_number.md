# `_type_number`

**`_title`**

Number

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a numeric value that accepts both integers and floating-point numbers. For stricter constraints, use [`_type_number_float`](_type_number_float.md) (floating-point only) or [`_type_number_integer`](_type_number_integer.md) (integers only).

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_number`, the descriptor accepts any numeric value — integer or floating-point. All numbers are stored as double-precision floating-point in ArangoDB internally.

Companion properties: [`_decimals`](_decimals.md) (display hint for decimal places), [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md), [`_valid-range`](_valid-range.md), [`_normal-range`](_normal-range.md).

**`_examples`**

**Number with unit and normal range** — body temperature in degrees Celsius:

```json
{
	"_scalar": {
		"_type_scalar": "_type_number",
		"_decimals": 1,
		"_unit": "_unit_temperature_C",
		"_normal-range": {
			"_min-range-inclusive": 36.0,
			"_max-range-inclusive": 37.5
		}
	}
}
```



**Number with valid range** — a count of samples that must be at least 1:

```json
{
	"_scalar": {
		"_type_scalar": "_type_number",
		"_valid-range": {
			"_min-range-inclusive": 1
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "number"
  ],
  "_gid" : "_type_number",
  "_lid" : "number",
  "_nid" : "_type"
}
```
