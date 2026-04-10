# `_string_min-exclusive`

**`_title`**

String range minimum exclusive

**`_definition`**

The strict lower bound property of a string range object. The validated string must be lexicographically greater than this value (value > bound). Used inside `_range_valid_string` or `_range_normal_string` objects; mutually exclusive with `_string_min-inclusive`.

**`_description`**

`_string_min-exclusive` is a property of a [`_range_string`](_range_string.md) object. When present, the string value being validated must be **lexicographically greater than** this bound (open lower bound, code-point order). It is mutually exclusive with [`_string_min-inclusive`](_string_min-inclusive.md) — at most one minimum bound may appear in a single range object.

**`_examples`**

A date field that must be strictly after 1999-12-31 (i.e., from 2000 onwards):

```json
{
	"_range_valid_string": {
		"_string_min-exclusive": "1999-12-31"
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
  "_gid" : "_string_min-exclusive",
  "_lid" : "min-exclusive",
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
