# `_regexp`

**`_title`**

Regular Expression

**`_definition`**

A regular expression used to validate string values. When present in a `_scalar` section, the string value of the descriptor must match this pattern. Valid only when `_kind_string` is absent.

**`_description`**

`_regexp` is an optional property of the [`_scalar`](_scalar.md) section, applicable only to [`_type_string`](_type_string.md) without a [`_kind_string`](_kind_string.md) qualifier. When `_kind_string` is present, the format is already self-defining and a regular expression could contradict it, so `_regexp` is not permitted alongside any `_kind_string` value — including [`_kind_string_regexp`](_kind_string_regexp.md).

**Distinction from [`_kind_string_regexp`](_kind_string_regexp.md)**: `_regexp` is a *validation tool* — it holds a pattern that the descriptor's string value must match. [`_kind_string_regexp`](_kind_string_regexp.md) is a *type declaration* — it states that the descriptor's stored value *is itself* a regular expression. These two concepts are complementary but mutually exclusive as `_scalar` properties: you cannot use `_regexp` to validate a field whose `_kind_string` is already `_kind_string_regexp`.

The value is a plain UTF-8 string containing a valid regular expression. The expression is evaluated against the full string value of the descriptor.

`_regexp` is also used in the [`_code`](_code.md) section to validate the `_lid` of a term — the same property serves both roles.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_regexp": "^[A-Z]{2,3}$"
	}
}
```

This descriptor accepts only strings of two or three uppercase ASCII letters.

---

**`_code`**

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_regexp",
  "_lid" : "regexp",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_string" : "_kind_string_regexp",
    "_type" : "_type_string"
  }
}
```
