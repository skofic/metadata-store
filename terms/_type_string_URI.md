# `_type_string_URI`

**`_title`**

Uniform Resource Identifier

**`_definition`**

The scalar data type for Uniform Resource Identifiers conforming to RFC 3986. The type carries its own format constraint; `_regexp` is not applicable.

**`_description`**

`_type_string_URI` declares that the value is a [URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) string. The type itself defines the format ([RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986)); [`_regexp`](_regexp.md) is not applicable. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type_string",
	"_lid": "URI",
	"_gid": "_type_string_URI",
	"_aid": ["URI"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
