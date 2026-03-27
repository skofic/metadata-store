# `_decimals`

**`_title`**

Decimals

**`_definition`**

The number of decimal places to display when rendering a floating-point value. This is a display hint only — it does not constrain the precision of the stored value. Valid only when _type_scalar is _type_number or _type_number_float; not permitted with _type_number_integer.

**`_description`**

[`_decimals`](_decimals.md) is an optional property of the [`_scalar`](_scalar.md) section, applicable only when [`_type_scalar`](_type_scalar.md) is [`_type_number`](_type_number.md) or [`_type_number_float`](_type_number_float.md). It is not permitted when [`_type_scalar`](_type_scalar.md) is [`_type_number_integer`](_type_number_integer.md), since integers have no decimal part. It controls how many decimal places the frontend displays when rendering the value, without affecting storage precision.

The value must be a non-negative integer. A value of `0` requests display as a whole number even though the underlying storage may retain fractional precision.

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_float",
		"_decimals": 2
	}
}
```

Values will be displayed with exactly two decimal places, for example `3.14` or `0.00`.

---

**`_code`**

```json
{
  "_aid" : [
    "decimals"
  ],
  "_gid" : "_decimals",
  "_lid" : "decimals",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_number_integer",
    "_valid-range" : {
      "_min-range-inclusive" : 0
    }
  }
}
```
