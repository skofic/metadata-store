# `_regexp`

**`_title`**

Regular expression

**`_definition`**

A regular expression pattern. In the identification section it constrains the format of local identifiers within the namespace; in the data section it constrains the value of generic string scalars.

**`_description`**

This property stores a regular expression and is used in two distinct contexts:

**In the [identification section](_code.md)**: when present on a namespace-defining term, `_regexp` specifies the pattern that all [local identifiers](_lid.md) within that namespace must satisfy. For example, an ISO 3166-3 namespace term carries a three-uppercase-letter pattern to enforce that every member term's `_lid` is a valid alpha-3 code.

**In the [data section](_data.md)**: when present inside a [`_scalar`](_scalar.md) object whose [`_scalar_type`](_scalar_type.md) is `_type_string`, `_regexp` constrains the format of the string value a descriptor accepts. It applies only to `_type_string` — format-specific string types such as `_type_string_date` or `_type_string_URI` are self-defining and do not accept a `_regexp` companion.

The value stored in this property is itself a regular expression string.

**`_examples`**

A namespace term enforcing that all member `_lid` values are exactly three uppercase letters (ISO 3166-3 country codes):

```json
{
	"_code": {
		"_nid": "ISO",
		"_lid": "3166_3",
		"_gid": "ISO_3166_3",
		"_regexp": "^[A-Z]{3}$"
	}
}
```

A descriptor whose value must be a valid hex colour code:

```json
{
	"_data": {
		"_scalar": {
			"_scalar_type": "_type_string",
			"_regexp": "^#[0-9A-Fa-f]{6}$"
		}
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "regexp",
	"_gid": "_regexp",
	"_aid": ["regexp"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_regexp"
	}
}
```

**`_domn`**

```json
{}
```
