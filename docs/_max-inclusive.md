# `_max-inclusive`

**`_title`**

Range maximum inclusive

**`_definition`**

The closed upper bound property of a numeric range object. The validated value must be less than or equal to this number (value ≤ bound). Used inside `_range_valid` or `_range_normal` objects; mutually exclusive with `_max-exclusive`.

**`_description`**

`_max-inclusive` is a property of a [`_range`](_range.md) object. When present, the numeric value being validated must be **less than or equal to** this bound (closed upper bound). It is mutually exclusive with [`_max-exclusive`](_max-exclusive.md) — at most one maximum bound may appear in a single range object.

**`_examples`**

A percentage value that must be between 0 and 100 (both bounds inclusive):

```json
{
	"_range_valid": {
		"_min-inclusive": 0,
		"_max-inclusive": 100
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "max-inclusive"
  ],
  "_gid" : "_max-inclusive",
  "_lid" : "max-inclusive",
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
