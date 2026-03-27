# `_regexp`

**`_title`**

Regular Expression

**`_definition`**

A regular expression used to validate string values. When present in a [`_scalar`](_scalar.md) section, the string value of the descriptor must match this pattern. Valid only when [`_type_scalar`](_type_scalar.md) is [`_type_string`](_type_string.md); not permitted with any format-specific string type (`_type_string_*`).

**`_description`**

[`_regexp`](_regexp.md) is an optional property of the [`_scalar`](_scalar.md) section, applicable only when [`_type_scalar`](_type_scalar.md) is [`_type_string`](_type_string.md) (generic UTF-8). With any format-specific string type ([`_type_string_Markdown`](_type_string_Markdown.md), [`_type_string_date`](_type_string_date.md), [`_type_string_regexp`](_type_string_regexp.md), and so on), the format is already self-defining and a regular expression could contradict it, so [`_regexp`](_regexp.md) is not permitted alongside any `_type_string_*` type.

**Distinction from `_type_scalar: "_type_string_regexp"`**: [`_regexp`](_regexp.md) is a *validation tool* — it holds a pattern that the descriptor's string value must match. When [`_type_scalar`](_type_scalar.md) is [`_type_string_regexp`](_type_string_regexp.md), the descriptor declares that its stored value *is itself* a regular expression. These two are mutually exclusive: a field typed as [`_type_string_regexp`](_type_string_regexp.md) cannot also carry [`_regexp`](_regexp.md) because its format is already self-defining.

The value is a plain UTF-8 string containing a valid regular expression. The expression is evaluated against the full string value of the descriptor.

[`_regexp`](_regexp.md) is also used in the [`_code`](_code.md) section to validate the [`_lid`](_lid.md) of a term — the same property serves both roles.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string",
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
    "_type_scalar" : "_type_string_regexp"
  }
}
```
