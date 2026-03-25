# `_examples`

**`_title`**

Examples

**`_definition`**

Samples of the term's usage or value, helping users understand how to supply or interpret data correctly. Expressed as a Markdown or HTML string.

**`_description`**

[`_examples`](_examples.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_Markdown`](_info_string_Markdown.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown or HTML string**.

Examples complement the description by showing concrete instances of valid values or usage patterns. They are especially useful for descriptors with non-obvious formats, enumeration values, or structural constraints. JSON code blocks are preferred for structured data examples.

```json
{
	"_examples": {
		"ISO_639_3_eng": "A valid body weight entry for an adult male:\n\n```json\n{\n\t\"chr_body_weight\": 82.5\n}\n```\n\nAn invalid entry (value out of valid range):\n\n```json\n{\n\t\"chr_body_weight\": -5.0\n}\n```"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "examples"
  ],
  "_gid" : "_examples",
  "_lid" : "examples",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string_Markdown"
}
```
