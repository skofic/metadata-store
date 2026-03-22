# `_kind_string_URI`

**`_title`**

URI

**`_definition`**

An enumeration element indicating that the string value is a Uniform Resource Identifier (URI). The value must conform to RFC 3986 and may represent a URL, URN, or any other URI scheme.

**`_description`**

`_kind_string_URI` qualifies a [`_type_string`](_type_string.md) scalar as a URI. Valid values conform to [RFC 3986](https://www.rfc-editor.org/rfc/rfc3986) and include HTTP/HTTPS URLs, URNs, data URIs, and other scheme-specific forms. This qualifier is used for properties that store external references, documentation links, or resource identifiers.

When this qualifier is present, `_regexp` is not applicable.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_URI"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "URI"
  ],
  "_gid" : "_kind_string_URI",
  "_lid" : "URI",
  "_nid" : "_kind_string"
}
```
