# `_decimals`

**`_title`**

Display decimals

**`_definition`**

The maximum number of decimal places to display for a numeric value. Does not affect the stored precision of the value. Only meaningful for `_type_number` and `_type_number_float`.

**`_description`**

`_decimals` is a display hint for numeric scalar descriptors. It specifies the maximum number of decimal places shown when presenting a value to the user — the stored value retains full precision regardless.

`_decimals` is permitted only alongside [`_type_number`](_type_number.md) and [`_type_number_float`](_type_number_float.md); it is not valid for [`_type_number_integer`](_type_number_integer.md) (which has no decimal part) or any non-numeric type. Its value must be a non-negative integer.

**`_examples`**

A floating-point length displayed with two decimal places:

```json
{"_scalar": {"_scalar_type": "_type_number_float", "_decimals": 2}}
```

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
    "_range_valid" : {
      "_range_min-inclusive" : 0
    },
    "_scalar_type" : "_type_number_integer"
  }
}
```
