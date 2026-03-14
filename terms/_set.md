# `_set`

**`_title`**

Set

**`_definition`**

The shape property for an unordered list of unique elements of the same comparable type. Unlike other shape properties, _set cannot be empty: _set_scalar is always required, because without a declared element type there is no basis for enforcing uniqueness.

**`_description`**

This property defines the *shape* and *type* of a *set* — an unordered list of *unique* values of the *same comparable type*. Because uniqueness requires comparability, [`_set_type`](_set_type.md) accepts the same values as [`_type`](_type.md), with the exception of [`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), and [`_type_object_geojson`](_type_object_geojson.md), which are excluded because objects are not comparable.

The [`_set_scalar`](_set_scalar.md) property defines the element type using [`_set_type`](_set_type.md) along with the same optional companion and constraint properties as [`_scalar`](_scalar.md): [`_kind_number`](_kind_number.md), [`_kind_string`](_kind_string.md), [`_kind_key`](_kind_key.md), [`_kind_enum`](_kind_enum.md), [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), [`_valid-range`](_valid-range.md), [`_valid-range_string`](_valid-range_string.md), [`_normal-range`](_normal-range.md), and [`_normal-range_string`](_normal-range_string.md). [`_set_scalar`](_set_scalar.md) is always required — unlike [`_array`](_array.md), `_set` cannot be empty. Without a declared element type there is no basis for enforcing uniqueness, so the element type must always be specified.

The optional [`_elements`](_elements.md) property constrains the minimum and maximum number of items in the set.

**`_examples`**

```json
{
	"_set": {
		"_set_scalar": {
			"_set_type": "_type_boolean"
		}
	}
}
```
This example describes a set of [booleans](_type_boolean.md). Since boolean has only two distinct values, such a set can contain at most two elements: `true` and `false`.



```json
{
	"_set": {
		"_elements": {
			"_min-items": 1
		},
		"_set_scalar": {
			"_set_type": "_type_number",
			"_kind_number": ["_kind_number_integer"]
		}
	}
}
```
This example describes a set of unique [integer](_kind_number_integer.md) values; the set cannot be empty.



```json
{
	"_set": {
		"_set_scalar": {
			"_set_type": "_type_number",
			"_kind_number": ["_kind_number_float"],
			"_valid-range": {
				"_min-range-inclusive": 0.0,
				"_max-range-exclusive": 100.0
			},
			"_unit": "_unit_length_cm"
		}
	}
}
```
This example describes a set of unique [floating-point](_kind_number_float.md) numeric values greater than or equal to `0.0` and less than `100.0`, representing lengths in [centimetres](_unit_length_cm.md). The set can have any number of elements.



```json
{
	"_set": {
		"_elements": {
			"_max-items": 3
		},
		"_set_scalar": {
			"_set_type": "_type_enum",
			"_kind_enum": ["ISO_639_3"]
		}
	}
}
```
This example describes a set of [enumeration](_type_enum.md) values that must be chosen from the [ISO 639-3](ISO_639_3.md) controlled vocabulary of language codes. The set may contain at most 3 unique elements.

---

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_set"
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
    "_elements"
  ],
  "_required" : {
    "_selection-descriptors_all" : [
      "_set_scalar"
    ]
  }
}
```
