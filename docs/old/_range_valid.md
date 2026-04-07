# `_range_valid`

**`_title`**

Valid numeric range

**`_definition`**

The hard-boundary numeric range for a scalar value. Any value outside this range is an error and must be rejected. Conforms to the `_range` schema.

**`_description`**

`_range_valid` defines the acceptable numeric interval for a scalar descriptor. Values outside this range are considered **errors** — they violate the definition of the descriptor and must be rejected by any conforming validator.

This contrasts with [`_range_normal`](_range_normal.md), which defines expected rather than mandatory bounds. An absent `_range_valid` means no hard numeric boundary is enforced.

The value is an object conforming to the [`_range`](_range.md) schema, containing at most one lower bound and at most one upper bound.

**`_examples`**

A Kelvin temperature must be non-negative:

```json
{
	"_scalar": {
		"_scalar_type": "_type_number_float",
		"_range_valid": {"_range_min-inclusive": 0.0}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "valid"
  ],
  "_gid" : "_range_valid",
  "_lid" : "valid",
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
