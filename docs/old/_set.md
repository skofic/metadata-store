# `_set`

**`_title`**

Set

**`_definition`**

The shape property for an unordered collection of unique elements of the same comparable type. Unlike `_array`, a set enforces uniqueness, so the element type must always be declared in the required `_comparable` section.

**`_description`**

A *set* is an unordered collection in which every element is unique and the element type is the same throughout. Unlike an [`_array`](_array.md), which may contain duplicate values and allows any shape as element type, a set enforces uniqueness — requiring that elements are *comparable* (equality and ordering are well-defined).

The element type is declared in the required [`_comparable`](_comparable.md) section, which uses [`_comparable_type`](_comparable_type.md) instead of [`_scalar_type`](_scalar_type.md). Unlike `_array`, `_set` is never empty: `_comparable` is always required, because without a declared element type there is no basis for enforcing uniqueness.

The optional [`_elements`](_elements.md) property constrains the minimum and maximum number of elements the set may contain.

**`_examples`**

A set of ISO 639-3 language codes:

```json
{
	"_set": {
		"_comparable": {"_comparable_type": "_type_enum", "_enum_types": ["ISO_639_3"]}
	}
}
```

A set of between 1 and 5 unique integers:

```json
{
	"_set": {
		"_elements": {"_min-items": 1, "_max-items": 5},
		"_comparable": {"_comparable_type": "_type_number_integer"}
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
    "_object_types" : [
      "_set"
    ],
    "_scalar_type" : "_type_object"
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
  "_required" : [
    {
      "_selection_descriptors" : [
        "_comparable"
      ],
      "_selection_rules" : [
        {
          "_selection_type" : "_type_selection_mandatory"
        }
      ]
    }
  ]
}
```
