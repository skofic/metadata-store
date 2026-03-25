# `_citation`

**`_title`**

Citations

**`_definition`**

A set of citations that must be referenced when using or publishing data associated with this term. Each entry is a Markdown or HTML string.

**`_description`**

[`_citation`](_citation.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_Markdown`](_info_string_Markdown.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown or HTML string** containing one or more formatted citation entries.

Use this property when a term is derived from, or requires attribution to, a published standard, paper, or dataset. The citation text should follow whatever reference format is appropriate for the relevant domain (e.g. APA, Vancouver, ISO citation style). Markdown links are encouraged to make references directly clickable.

```json
{
	"_citation": {
		"ISO_639_3_eng": "World Health Organization. (2006). *WHO Child Growth Standards*. Geneva: WHO Press. [https://www.who.int/tools/child-growth-standards](https://www.who.int/tools/child-growth-standards)"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "citation"
  ],
  "_gid" : "_citation",
  "_lid" : "citation",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string_Markdown"
}
```
