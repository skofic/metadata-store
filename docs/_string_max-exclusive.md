# `_string_max-exclusive`

**`_title`**

String range maximum exclusive

**`_definition`**

The strict upper bound property of a string range object. The validated string must be lexicographically less than this value (value < bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_max-inclusive`.

**`_description`**

`_string_max-exclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically less than** this bound (open upper bound, code-point order). It is mutually exclusive with [`_string_max-inclusive`](_string_max-inclusive.md) — at most one maximum bound may appear in a single range object.

**`_examples`**

A date field accepting dates strictly before 2100-01-01:

```json
{
	"_range_valid_string": {
		"_string_max-exclusive": "2100-01-01"
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
  "_gid" : "_string_max-exclusive",
  "_lid" : "max-exclusive",
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
