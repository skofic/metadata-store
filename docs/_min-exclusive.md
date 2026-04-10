# `_min-exclusive`

**`_title`**

Range minimum exclusive

**`_definition`**

The strict lower bound property of a numeric range object. The validated value must be strictly greater than this number (value > bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-inclusive`.

**`_description`**

`_min-exclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **strictly greater than** this bound (open lower bound). It is mutually exclusive with [`_min-inclusive`](_min-inclusive.md) — at most one minimum bound may appear in a single range object.

**`_examples`**

A value that must be strictly positive (greater than zero):

```json
{
	"_range_valid": {
		"_min-exclusive": 0
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "min-exclusive"
  ],
  "_gid" : "_min-exclusive",
  "_lid" : "min-exclusive",
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
