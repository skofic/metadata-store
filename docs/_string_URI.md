# `_string_URI`

**`_title`**

Uniform Resource Identifier

**`_definition`**

The scalar data type for Uniform Resource Identifiers conforming to RFC 3986. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_URI` declares that the value is a [URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) string conforming to [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_URI": {}
	}
}
```

Stored values: `"https://www.example.com/resource"`, `"urn:isbn:0451450523"`, `"mailto:user@example.com"`.

---

**`_code`**

```json
{
  "_aid" : [
    "URI"
  ],
  "_gid" : "_string_URI",
  "_lid" : "URI",
  "_nid" : "_string"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
