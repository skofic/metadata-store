# `_type_string_regexp`

**`_title`**

Regular Expression

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a regular expression. The value must be a syntactically valid regular expression. The editing interface provides a testing facility to help users verify and debug their expressions.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_regexp`, the descriptor value is a syntactically valid regular expression string. The editing interface provides a **testing facility** — an input field where users can enter sample strings and verify that the expression matches or rejects them as intended.

This type is used as the data type of the [`_regexp`](_regexp.md) property itself, which holds a pattern constraining the value a [`_type_string`](_type_string.md) descriptor may hold.

Note the distinction:

- **`_type_string_regexp`** declares that a field's *stored value* is a regular expression.
- **[`_regexp`](_regexp.md)** is a companion property of [`_scalar`](_scalar.md) that holds a validation pattern — permitted only with [`_type_string`](_type_string.md).

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_regexp"
	}
}
```

A value such as `^[A-Z]{3}$` is valid; a malformed pattern is not.

---

**`_code`**

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_type_string_regexp",
  "_lid" : "regexp",
  "_nid" : "_type_string"
}
```
