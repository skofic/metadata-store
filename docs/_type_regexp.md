# `_type_regexp`

**`_title`**

Regular expression

**`_definition`**

The scalar data type for regular expression patterns. The stored value is itself a pattern, not a string to be validated against a pattern.

**`_description`**

`_type_regexp` declares that the value is a regular expression string. This is distinct from the [`_regexp`](_regexp.md) property: [`_regexp`](_regexp.md) holds a *validation pattern* applied to a string value; `_type_regexp` declares that the *stored value itself* is a pattern. A member of [`_type_data_comparable`](_type_data_comparable.md), but not of [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "regexp",
	"_gid": "_type_regexp",
	"_aid": ["regexp"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
