# `_valid-range`

**`_title`**

Valid Number Range

**`_definition`**

The hard boundaries of acceptable numeric values. Any value falling outside this range is considered an error and must be rejected. The range is expressed as an object conforming to the [`_range`](_range.md) schema, with inclusive and/or exclusive lower and upper bounds.

**`_description`**

[`_valid-range`](_valid-range.md) defines the interval of values that are considered correct for a numeric descriptor. Values outside this interval are treated as **errors** — they are invalid and must be rejected by the validation layer. This is distinct from [`_normal-range`](_normal-range.md), where out-of-range values are flagged as outliers rather than rejected.

The value is an object conforming to the [`_range`](_range.md) schema. It may specify a lower bound, an upper bound, or both; each bound may be inclusive or exclusive.

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_float",
		"_valid-range": {
			"_min-range-inclusive": 0.0,
			"_max-range-inclusive": 100.0
		}
	}
}
```

Values below `0.0` or above `100.0` are errors — for example, a percentage that cannot be negative or exceed 100.

---

**`_code`**

```json
{
  "_aid" : [
    "valid-range"
  ],
  "_gid" : "_valid-range",
  "_lid" : "valid-range",
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
