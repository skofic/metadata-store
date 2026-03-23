# `_min-range-inclusive`

**`_title`**

Minimum Range Inclusive

**`_definition`**

The inclusive lower bound of a numeric range. Only values greater than or equal to this bound belong to the range.

**`_description`**

[`_min-range-inclusive`](_min-range-inclusive.md) is a property of [`_range`](_range.md) objects. It defines the lower bound of the numeric interval, **including** the bound value itself (≥). It may appear in [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) objects.

At most one of [`_min-range-inclusive`](_min-range-inclusive.md) and [`_min-range-exclusive`](_min-range-exclusive.md) may be present in the same range object.

```json
{
	"_valid-range": {
		"_min-range-inclusive": 0
	}
}
```

Values must be zero or greater; negative values are out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "min-range-inclusive"
  ],
  "_gid" : "_min-range-inclusive",
  "_lid" : "min-range-inclusive",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_number"
  }
}
```
