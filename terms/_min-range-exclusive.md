# `_min-range-exclusive`

**`_title`**

Minimum Range Exclusive

**`_definition`**

The exclusive lower bound of a numeric range. Only values strictly greater than this bound belong to the range — the bound value itself is excluded.

**`_description`**

`_min-range-exclusive` is a property of [`_range`](_range.md) objects. It defines the lower bound of the numeric interval, **excluding** the bound value itself (>). It may appear in [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) objects.

At most one of `_min-range-exclusive` and [`_min-range-inclusive`](_min-range-inclusive.md) may be present in the same range object.

```json
{
	"_valid-range": {
		"_min-range-exclusive": 0
	}
}
```

Values must be strictly positive; zero itself is out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "min-range-exclusive"
  ],
  "_gid" : "_min-range-exclusive",
  "_lid" : "min-range-exclusive",
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
