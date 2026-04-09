# `_provider`

**`_title`**

Providers

**`_definition`**

Contact information for the metadata curators responsible for the term. Expressed as formatted text. Identifies who to contact for questions, corrections, or contributions.

**`_description`**

`_provider` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It records the individuals or organisations that manage the term — who created it, who maintains it, and how to reach them.

For terms maintained by international standards bodies, the provider is the standards organisation. For terms created by data projects, the provider is the project or research group responsible.

**`_examples`**

A provider entry for a term maintained by a research group:

```json
{
	"_provider": {
		"ISO_639_3_eng": "Biodiversity Data Institute — metadata@bdi.example.org"
	}
}
```

---

**`_code`**

```json
{
  "_gid": "_provider",
  "_lid": "provider",
  "_nid": "",
  "_aid": ["provider"]
}
```

**`_data`**

```json
{
  "_typedef": "_info_text"
}
```
