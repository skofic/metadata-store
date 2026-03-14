# `_scalar`

**`_title`**

Scalar

**`_definition`**

The shape property for a single, indivisible value of any type. When empty, the descriptor accepts any scalar value without type or format constraints.

**`_description`**

This property defines the *shape* and *type* of a *scalar value* — a single, indivisible datum. A [*number*](_type_number.md), a [*boolean*](_type_boolean.md), or a [*string*](_type_string.md) are examples of scalar values; an [*array*](_array.md) of elements, a [*set*](_set.md), a [*tuple*](_tuple.md), or a key/value [*dictionary*](_dict.md) are not.

When `_scalar` is an *empty object*, the descriptor accepts any scalar value of any type. When it contains a [`_type`](_type.md) property, that type constraint is enforced. Depending on the type, a companion kind property — [`_kind_number`](_kind_number.md), [`_kind_string`](_kind_string.md), [`_kind_key`](_kind_key.md), [`_kind_enum`](_kind_enum.md), or [`_kind_object`](_kind_object.md) — may further qualify the type, and additional properties such as [`_unit`](_unit.md) or range properties may constrain or document the value.

**`_examples`**

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_integer"],
		"_valid-range": {
			"_min-range-inclusive": 5,
			"_max-range-inclusive": 10
		}
	}
}
```
This example describes a scalar [integer](_kind_number_integer.md) value in the range from `5` to `10` inclusive.



```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_valid-range": {
			"_min-range-inclusive": 0.0,
			"_max-range-exclusive": 100.0
		},
		"_unit": "_unit_length_cm"
	}
}
```
This example describes a [floating-point](_kind_number_float.md) numeric value greater than or equal to `0.0` and less than `100.0`, representing a length in [centimetres](_unit_length_cm.md).



```json
{
	"_scalar": {
		"_type": "_type_enum",
		"_kind_enum": ["iso_639_3"]
	}
}
```
This example describes an [enumeration](_type_enum.md) value that must be chosen from the [ISO 639-3](iso_639_3.md) controlled vocabulary of language codes.



```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_markdown"
	}
}
```
This example describes a [text](_type_string.md) value encoded in [Markdown](_kind_string_markdown.md) format.



```json
{
	"_scalar": {}
}
```
This example describes a descriptor that accepts a scalar value of any type. The empty `_scalar` object means no type constraint is applied, but non-scalar shapes — [arrays](_array.md), [sets](_set.md), [tuples](_tuple.md), and [dictionaries](_dict.md) — are still excluded.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_scalar"
    ],
    "_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_banned" : [
    "_scalar",
    "_array",
    "_set",
    "_tuple",
    "_dict"
  ],
  "_recommended" : [
    "_type",
    "_kind_number",
    "_kind_string",
    "_kind_key",
    "_kind_enum",
    "_kind_object",
    "_unit",
    "_unit-name",
    "_unit-symbol",
    "_regexp",
    "_decimals",
    "_valid-range",
    "_valid-range_string",
    "_normal-range",
    "_normal-range_string"
  ]
}
```
