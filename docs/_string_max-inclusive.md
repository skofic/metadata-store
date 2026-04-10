# `_string_max-inclusive`

**`_title`**

String range maximum inclusive

**`_definition`**

The closed upper bound property of a string range object. The validated string must be lexicographically less than or equal to this value (value ≤ bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-exclusive`.

**`_description`**

`_string_max-inclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically less than or equal to** this bound (closed upper bound, code-point order). It is mutually exclusive with [`_string_max-exclusive`](_string_max-exclusive.md) — at most one maximum bound may appear in a single range object.

**`_examples`**

A date field accepting dates up to and including 2099-12-31:

```json
{
	"_range_valid_string": {
		"_string_max-inclusive": "2099-12-31"
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
  "_gid" : "_string_max-inclusive",
  "_lid" : "max-inclusive",
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
