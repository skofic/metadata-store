# `_max-range-exclusive`

**`_title`**

Maximum Range Exclusive

**`_definition`**

The exclusive upper bound of a numeric range. Only values strictly less than this bound belong to the range — the bound value itself is excluded.

**`_description`**

`_max-range-exclusive` is a property of [`_range`](_range.md) objects. It defines the upper bound of the numeric interval, **excluding** the bound value itself (<). It may appear in [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) objects.

At most one of `_max-range-exclusive` and [`_max-range-inclusive`](_max-range-inclusive.md) may be present in the same range object.

```json
{
	"_valid-range": {
		"_min-range-inclusive": 0.0,
		"_max-range-exclusive": 1.0
	}
}
```

Values must lie in the half-open interval [0.0, 1.0): zero is accepted, 1.0 is not.

---

**`_code`**

```json
{
  "_aid" : [
    "max-range-exclusive"
  ],
  "_gid" : "_max-range-exclusive",
  "_lid" : "max-range-exclusive",
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
