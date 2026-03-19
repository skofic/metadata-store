# `_decimals`

**`_title`**

Decimals

**`_definition`**

The number of decimal places to display when rendering a floating-point value. This is a display hint only — it does not constrain the precision of the stored value. Valid only when `_kind_number` contains `_kind_number_float`.

**`_description`**

`_decimals` is an optional property of the [`_scalar`](_scalar.md) section, applicable only when [`_type`](_type.md) is `_type_number` and [`_kind_number`](_kind_number.md) contains [`_kind_number_float`](_kind_number_float.md). It controls how many decimal places the frontend displays when rendering the value, without affecting storage precision.

The value must be a non-negative integer. A value of `0` requests display as a whole number even though the underlying storage may retain fractional precision.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
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
    "_kind_number" : [
      "_kind_number_integer"
    ],
    "_type" : "_type_number",
    "_valid-range" : {
      "_min-range-inclusive" : 0
    }
  }
}
```
