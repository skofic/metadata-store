# `_max-exclusive`

**`_title`**

Range maximum exclusive

**`_definition`**

The strict upper bound property of a numeric range object. The validated value must be strictly less than this number (value < bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-inclusive`.

**`_description`**

`_max-exclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **strictly less than** this bound (open upper bound). It is mutually exclusive with [`_max-inclusive`](_max-inclusive.md) — at most one maximum bound may appear in a single range object.

**`_examples`**

A probability value that must be in the range [0, 1) — zero is allowed, one is not:

```json
{
	"_range_valid": {
		"_min-inclusive": 0.0,
		"_max-exclusive": 1.0
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "max-exclusive"
  ],
  "_gid" : "_max-exclusive",
  "_lid" : "max-exclusive",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_number" : {

    }
  }
}
```
