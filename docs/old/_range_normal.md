# `_range_normal`

**`_title`**

Normal numeric range

**`_definition`**

The expected numeric range for a scalar value. Values outside this range are flagged as outliers for review but are not rejected. Conforms to the `_range` schema.

**`_description`**

`_range_normal` defines the expected or typical numeric interval for a scalar descriptor. Values outside this range are **outliers** — they are not rejected, but flagged for human review. A value can be outside the normal range yet within the valid range and still be accepted.

This contrasts with [`_range_valid`](_range_valid.md), which defines hard error boundaries. The two ranges are independent: `_range_normal` is typically a tighter inner interval while `_range_valid` is the outer limit of what is physically or logically possible.

The value is an object conforming to the [`_range`](_range.md) schema.

**`_examples`**

Human body temperature (°C): values above 42 are outliers; valid up to 45:

```json
{
	"_scalar": {
		"_scalar_type": "_type_number_float",
		"_range_valid": {"_range_min-inclusive": 25.0, "_range_max-inclusive": 45.0},
		"_range_normal": {"_range_min-inclusive": 35.0, "_range_max-inclusive": 42.0}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "normal"
  ],
  "_gid" : "_range_normal",
  "_lid" : "normal",
  "_nid" : "_range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_range"
    ],
    "_scalar_type" : "_type_object"
  }
}
```
