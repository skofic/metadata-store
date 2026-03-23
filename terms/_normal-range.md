# `_normal-range`

**`_title`**

Normal Number Range

**`_definition`**

The boundaries of expected or typical numeric values. Values outside this range are flagged as outliers for review but are not rejected. The range is expressed as an object conforming to the [`_range`](_range.md) schema, with inclusive and/or exclusive lower and upper bounds.

**`_description`**

[`_normal-range`](_normal-range.md) defines the interval in which numeric values are considered typical. Values outside this interval are flagged as **outliers** — they are not invalid, but warrant manual review. This is distinct from [`_valid-range`](_valid-range.md), which marks out-of-range values as errors that must be rejected.

The concept is analogous to a reference interval in clinical data: a value may be physiologically possible yet unusual enough to require a double-check. For example, adult body temperature above 42 °C is not impossible but is highly unusual.

The value is an object conforming to the [`_range`](_range.md) schema.

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_float",
		"_unit": "QUDT_unit_DEG_C",
		"_valid-range": {"_min-range-inclusive": -273.15},
		"_normal-range": {
			"_min-range-inclusive": 36.0,
			"_max-range-inclusive": 42.0
		}
	}
}
```

Temperatures below absolute zero are errors ([`_valid-range`](_valid-range.md)); temperatures outside 36–42 °C are outliers flagged for review ([`_normal-range`](_normal-range.md)).

---

**`_code`**

```json
{
  "_aid" : [
    "normal-range"
  ],
  "_gid" : "_normal-range",
  "_lid" : "normal-range",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range"
    ],
    "_type_scalar" : "_type_object"
  }
}
```
