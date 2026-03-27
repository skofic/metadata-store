# `_type_string_SVG`

**`_title`**

SVG

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an SVG (Scalable Vector Graphics) image. The value is a UTF-8 string containing valid SVG XML markup, suitable for inline rendering in a browser.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_SVG`, the descriptor value is an SVG image stored inline. SVG is an XML-based vector image format; storing it as a string allows images to be embedded directly in term documents without a separate file reference. Typical uses include icons, diagrams, and flag images for ISO 3166 country terms.

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_SVG"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "SVG"
  ],
  "_gid" : "_type_string_SVG",
  "_lid" : "SVG",
  "_nid" : "_type_string"
}
```
