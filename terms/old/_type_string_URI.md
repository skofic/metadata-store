# `_type_string_URI`

**`_title`**

URI

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a Uniform Resource Identifier (URI). The value must conform to RFC 3986 and may represent a URL, URN, or any other URI scheme.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_URI`, the descriptor value is a URI conforming to [RFC 3986](https://www.rfc-editor.org/rfc/rfc3986). Valid values include HTTP/HTTPS URLs, URNs, data URIs, and other scheme-specific forms. This type is used for properties that store external references, documentation links, or resource identifiers.

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_URI"
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
  "_gid" : "_type_string_URI",
  "_lid" : "URI",
  "_nid" : "_type_string"
}
```
