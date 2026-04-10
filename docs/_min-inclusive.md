# `_min-inclusive`

**`_title`**

Range minimum inclusive

**`_definition`**

The closed lower bound property of a numeric range object. The validated value must be greater than or equal to this number (value ≥ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_min-exclusive`.

**`_description`**

`_min-inclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **greater than or equal to** this bound (closed lower bound). It is mutually exclusive with [`_min-exclusive`](_min-exclusive.md) — at most one minimum bound may appear in a single range object.

**`_examples`**

A value that must be non-negative (zero or greater):

```json
{
	"_range_valid": {
		"_min-inclusive": 0
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "min-inclusive"
  ],
  "_gid" : "_min-inclusive",
  "_lid" : "min-inclusive",
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
