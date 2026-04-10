# `_unit`

**`_title`**

Unit

**`_definition`**

The companion property for specifying the unit of measurement of a scalar value using a controlled vocabulary term from the `_unit` enumeration graph. Its value is a single `_unit` element `_gid`. Mutually exclusive with `_unit_name` and `_unit_symbol`: use `_unit` when the unit exists in the controlled vocabulary, or `_unit_name` / `_unit_symbol` otherwise.

**`_description`**

`_unit` is an optional companion property accepted by [`_number`](_number.md), [`_number_float`](_number_float.md), [`_number_integer`](_number_integer.md), and [`_string`](_string.md). When present, it declares the unit of measurement by referencing a single term from the `_unit` controlled vocabulary.

The value is an [`_enum`](_enum.md) scalar — the `_gid` of the enumeration element that identifies the unit, constrained to the `_unit` enumeration root.

`_unit` is mutually exclusive with [`_unit_name`](_unit_name.md) and [`_unit_symbol`](_unit_symbol.md). When `_unit` is present, neither `_unit_name` nor `_unit_symbol` may appear in the same scalar descriptor.

**`_examples`**

A floating-point body temperature in degrees Celsius:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 1,
			"_unit": "_unit_temperature_C"
		}
	}
}
```

Stored values: `"_unit_length_m"`, `"_unit_temperature_C"`, `"_unit_weight_kg"`.

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
    "_enum" : {
      "_enums" : [
        "_unit"
      ]
    }
  }
}
```
