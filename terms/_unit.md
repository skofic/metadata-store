# `_unit`

**`_title`**

Unit

**`_definition`**

The measurement unit associated with a numeric or quantified value, selected from the `_unit` controlled vocabulary. When present, it provides a standardised, codified identifier for the unit that applies to the descriptor's values — for example, centimetres, degrees Celsius, or kilograms.

**`_description`**

`_unit` is an optional property of the [`_scalar`](_scalar.md) section. Its value is the `_gid` of an enumeration element from the `_unit` controlled vocabulary, populated from the [QUDT ontology](https://qudt.org/) (Quantities, Units, Dimensions and Data Types).

Using a codified unit rather than a free-text name enables unit-aware validation, unit conversion, and interoperability between datasets. When a standardised unit code is not available in the `_unit` vocabulary, use [`_unit-name`](_unit-name.md) and [`_unit-symbol`](_unit-symbol.md) instead.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_unit": "QUDT_unit_CentiM",
		"_decimals": 1
	}
}
```

**`_notes`**

The `_unit` controlled vocabulary will be populated from the QUDT ontology when the QUDT namespace is imported. Until then, unit codes such as `QUDT_unit_CentiM` or `QUDT_unit_K` used in examples are indicative of the expected format.

---

**`_code`**

```json
{
  "_aid" : [
    "unit"
  ],
  "_gid" : "_unit",
  "_lid" : "unit",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_enum" : [
      "_unit"
    ],
    "_type" : "_type_enum"
  }
}
```
