# `_string_min-inclusive`

**`_title`**

String range minimum inclusive

**`_definition`**

The closed lower bound property of a string range object. The validated string must be lexicographically greater than or equal to this value (value ≥ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-exclusive`.

**`_description`**

`_string_min-inclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically greater than or equal to** this bound (closed lower bound, code-point order). It is mutually exclusive with [`_string_min-exclusive`](_string_min-exclusive.md) — at most one minimum bound may appear in a single range object.

**`_examples`**

A date field accepting any date from 2000-01-01 onwards (inclusive):

```json
{
	"_range_valid_string": {
		"_string_min-inclusive": "2000-01-01"
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
  "_gid" : "_string_min-inclusive",
  "_lid" : "min-inclusive",
  "_nid" : "_string"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```
