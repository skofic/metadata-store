# `_provider`

**`_title`**

Provider

**`_definition`**

Contact information for the curators responsible for the term's metadata — the people or organisations to contact when further information or clarification is needed.

**`_description`**

[`_provider`](_provider.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_Markdown`](_info_string_Markdown.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown or HTML string** listing one or more contact entries.

Each entry should include at minimum a name and an e-mail address. Additional details such as an institutional affiliation, postal address, or usage notes may be appended.

```json
{
	"_provider": {
		"ISO_639_3_eng": "Jane Smith <j.smith@institute.edu>\nTree Institute — 5 Oak Drive, Massachusetts, USA"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "provider"
  ],
  "_gid" : "_provider",
  "_lid" : "provider",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string_Markdown"
}
```
