# `_url`

**`_title`**

URLs

**`_definition`**

A set of internet references linking to external information relevant to the term. Each entry is a Markdown or HTML string, typically a labelled hyperlink.

**`_description`**

[`_url`](_url.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_formatted`](_info_string_formatted.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown** or **HTML** string containing one or more links.

Use this property for supplementary external references — standards pages, dataset portals, methodology documentation, or related tools. For references that require formal attribution, use [`_citation`](_citation.md) instead.

```json
{
	"_url": {
		"ISO_639_3_eng": "[CHELSA climate data v2.1](https://chelsa-climate.org)\n[Copernicus Land Monitoring Service](https://land.copernicus.eu)"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "url"
  ],
  "_gid" : "_url",
  "_lid" : "url",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string_formatted"
}
```
