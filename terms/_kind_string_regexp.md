# `_kind_string_regexp`

**`_title`**

Regular Expression

**`_definition`**

An enumeration element indicating that the string value is a regular expression. The value must be a syntactically valid regular expression. The editing interface provides a testing facility to help users verify and debug their expressions.

**`_description`**

`_kind_string_regexp` qualifies a [`_type_string`](_type_string.md) scalar as a regular expression string. The stored value must be a syntactically valid regular expression. The editing interface is expected to provide a **testing facility** — an input field where users can enter sample strings and verify that the expression matches or rejects them as intended.

This qualifier is used as the data type of the [`_regexp`](_regexp.md) property itself, which holds a regular expression pattern used to validate string values in a [`_scalar`](_scalar.md) section.

Note the distinction:

- **`_kind_string_regexp`** declares that a field's *stored value* is a regular expression.
- **[`_regexp`](_regexp.md)** is a property of `_scalar` that holds a pattern constraining the *value* a string descriptor may hold — it is not permitted when any `_kind_string` qualifier is present.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_regexp"
	}
}
```

This descriptor stores regular expression strings. A value such as `^[A-Z]{3}$` is valid; a malformed pattern is not.

---

**`_code`**

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_kind_string_regexp",
  "_lid" : "regexp",
  "_nid" : "_kind_string"
}
```
