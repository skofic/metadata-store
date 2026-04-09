# `_citation`

**`_title`**

Citations

**`_definition`**

One or more citations required when using or referencing the term. Expressed as formatted text. Each element is a bibliographic reference or acknowledgement that data users must include when publishing datasets that use the term.

**`_description`**

`_citation` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It is used when the term originates from a published standard, scientific paper, or data resource that requires attribution.

For terms derived from ISO standards or other normative sources, the citation identifies the source document. For terms derived from scientific literature, the citation is the primary reference for the underlying concept or measurement.

**`_examples`**

A citation for a term derived from an ISO standard:

```json
{
	"_citation": {
		"ISO_639_3_eng": "ISO 3166-1:2020 — Codes for the representation of names of countries and their subdivisions. Geneva: International Organization for Standardization."
	}
}
```

---

**`_code`**

```json
{
  "_gid": "_citation",
  "_lid": "citation",
  "_nid": "",
  "_aid": ["citation"]
}
```

**`_data`**

```json
{
  "_typedef": "_info_text"
}
```
