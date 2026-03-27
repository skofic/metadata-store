# `_set`

**`_title`**

Set

**`_definition`**

The shape property for an unordered list of unique elements of the same comparable type. Unlike other shape properties, [`_set`](_set.md) cannot be empty: the required [`_scalar_set`](_scalar_set.md) property defines the element type, and without it there is no basis for enforcing uniqueness.

**`_description`**

A *set* is an unordered collection of *unique* values of the *same comparable type*. Uniqueness requires that elements be comparable, so non-comparable types — [`_type_object`](_type_object.md), [`_type_struct`](_type_struct.md), and [`_type_object_GeoJSON`](_type_object_GeoJSON.md) — are not permitted as element types.

Unlike [`_array`](_array.md), a set is *not recursive*: its element type is always a scalar, defined by the required [`_scalar_set`](_scalar_set.md) property. An empty [`_set`](_set.md) object is not valid.

[`_scalar_set`](_scalar_set.md) works like [`_scalar`](_scalar.md), but uses [`_type_scalar_set`](_type_scalar_set.md) instead of [`_type_scalar`](_type_scalar.md) to declare the element type. All other properties — unit, range, [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), and [`_kind_enum`](_kind_enum.md) — behave identically to their counterparts in [`_scalar`](_scalar.md).

The optional [`_elements`](_elements.md) property constrains the minimum and maximum number of items in the set.

**`_examples`**

A set of booleans (at most two elements: `true` and `false`):

```json
{
	"_set": {
		"_scalar_set": {
			"_type_scalar_set": "_type_boolean"
		}
	}
}
```



A non-empty set of unique integers:

```json
{
	"_set": {
		"_elements": {
			"_min-items": 1
		},
		"_scalar_set": {
			"_type_scalar_set": "_type_number_integer"
		}
	}
}
```



A set of up to three ISO 639-3 language codes:

```json
{
	"_set": {
		"_elements": {
			"_max-items": 3
		},
		"_scalar_set": {
			"_type_scalar_set": "_type_enum",
			"_kind_enum": ["ISO_639_3"]
		}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "set"
  ],
  "_gid" : "_set",
  "_lid" : "set",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_set"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_elements"
  ],
  "_required" : {
    "_selection-descriptors_one" : [
      "_scalar_set"
    ]
  }
}
```
