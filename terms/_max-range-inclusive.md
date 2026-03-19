# `_max-range-inclusive`

**`_title`**

Maximum Range Inclusive

**`_definition`**

The inclusive upper bound of a numeric range. Only values less than or equal to this bound belong to the range.

**`_description`**

`_max-range-inclusive` is a property of [`_range`](_range.md) objects. It defines the upper bound of the numeric interval, **including** the bound value itself (≤). It may appear in [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) objects.

At most one of `_max-range-inclusive` and [`_max-range-exclusive`](_max-range-exclusive.md) may be present in the same range object.

```json
{
	"_valid-range": {
		"_min-range-inclusive": 0.0,
		"_max-range-inclusive": 100.0
	}
}
```

Values must lie within the closed interval [0.0, 100.0].

---

**`_code`**

```json
{
  "_aid" : [
    "max-range-inclusive"
  ],
  "_gid" : "_max-range-inclusive",
  "_lid" : "max-range-inclusive",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_number" : [
      "_kind_number_float",
      "_kind_number_integer"
    ],
    "_type" : "_type_number"
  }
}
```
