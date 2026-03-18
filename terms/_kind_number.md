# `_kind_number`

**`_title`**

Number Kind

**`_definition`**

Qualifier for the `_type_number` data type. Required when `_type` is `_type_number`, this set property selects whether the numeric value is a floating-point number, an integer, or both. Its elements are `_kind_number_float` and `_kind_number_integer`.

**`_description`**

The `_kind_number` property qualifies the [`_type_number`](_type_number.md) data type by specifying the accepted numeric subtype. It is **required** whenever [`_type`](_type.md) is set to [`_type_number`](_type_number.md), and must be a non-empty set containing one or both of the following elements:

- [`_kind_number_float`](_kind_number_float.md): The value is a floating-point number. When present, the [`_scalar`](_scalar.md) section may additionally carry [`_decimals`](_decimals.md) to control the number of decimal places displayed; the stored value is never rounded.
- [`_kind_number_integer`](_kind_number_integer.md): The value is a whole number with no decimal part.

When both elements are present, the descriptor accepts both floating-point and integer values.

---

**`_code`**

```json
{
  "_aid" : [
    "number"
  ],
  "_gid" : "_kind_number",
  "_lid" : "number",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_set" : {
    "_set_scalar" : {
      "_kind_enum" : [
        "_kind_number"
      ],
      "_set_type" : "_type_enum"
    }
  }
}
```
