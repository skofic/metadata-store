# `_url`

**`_title`**

URLs

**`_definition`**

Internet references relevant to the term. Expressed as formatted text. Each entry is a URL or a Markdown-linked reference pointing to an authoritative external resource.

**`_description`**

`_url` is expressed as an [`_info_text`](_info_text.md) — a multilingual formatted text dictionary. It contains links to external resources that provide additional context for the term: the homepage of a standard, an online specification, a reference database entry, or related documentation.

Links should be stable and authoritative. Prefer the canonical URL of the issuing body over secondary sources.

**`_examples`**

A URL entry linking to an ISO standard page:

```json
{
	"_url": {
		"ISO_639_3_eng": "[ISO 639-3](https://iso639-3.sil.org/) — Codes for the representation of names of languages."
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
  "_typedef" : "_info_text"
}
```
