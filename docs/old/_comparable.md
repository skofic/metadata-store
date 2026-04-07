# `_comparable`

**`_title`**

Comparable

**`_definition`**

The scalar sub-section for comparable data types. Contains the required `_comparable_type` property that declares the element data type. Used as the element descriptor in `_set` and `_nested` sections.

**`_description`**

[`_comparable`](_comparable.md) functions identically to [`_scalar`](_scalar.md), with one key difference: the type property is named [`_comparable_type`](_comparable_type.md) instead of [`_scalar_type`](_scalar_type.md), and its value is restricted to *comparable* types — types for which equality and ordering are well-defined.

Non-comparable types are excluded: `_type_string_Markdown`, `_type_string_HTML`, `_type_string_SVG`, `_type_string_LaTeX`, `_type_object`, `_type_struct`, and `_type_object_GeoJSON` cannot appear as set elements.

All other sub-properties — [`_enum_types`](_enum_types.md), [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_regexp`](_regexp.md), [`_decimals`](_decimals.md), and the range properties — behave identically to their counterparts in [`_scalar`](_scalar.md).

Unlike [`_scalar`](_scalar.md), `_comparable` can never be empty: [`_comparable_type`](_comparable_type.md) is always required, because without a declared type there is no basis for enforcing set uniqueness.

**`_examples`**

A comparable section for a set of ISO 639-3 language codes:

```json
{
	"_comparable": {"_comparable_type": "_type_enum", "_enum_types": ["ISO_639_3"]}
}
```

A comparable section for a set of unique integers:

```json
{"_comparable": {"_comparable_type": "_type_number_integer"}}
```

---

**`_code`**

```json
{
  "_aid" : [
    "comparable"
  ],
  "_gid" : "_comparable",
  "_lid" : "comparable",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_comparable"
    ],
    "_scalar_type" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_required" : [
    {
      "_selection_descriptors" : [
        "_comparable_type"
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
