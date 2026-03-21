# `_kind_string_SVG`

**`_title`**

SVG

**`_definition`**

An enumeration element indicating that the string value is an SVG (Scalable Vector Graphics) image. The value is a UTF-8 string containing valid SVG XML markup, suitable for inline rendering in a browser.

**`_description`**

`_kind_string_SVG` qualifies a [`_type_string`](_type_string.md) scalar as an SVG image stored inline. SVG is an XML-based vector image format; storing it as a string allows images to be embedded directly in term documents without a separate file reference. Typical uses include icons, diagrams, and flag images for ISO 3166 country terms.

When this qualifier is present, `_regexp` is not applicable.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_SVG"
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
  "_gid" : "_kind_string_SVG",
  "_lid" : "SVG",
  "_nid" : "_kind_string"
}
```
