# Citations
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_citation</code></p>

> One or more citations required when using or referencing the term. Expressed as formatted text. Each element is a bibliographic reference or acknowledgement that data users must include when publishing datasets that use the term.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `citation` |
| [Global identifier](_gid.md) | `_citation` |
| [Official identifiers](_aid.md) | `citation` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Citations

**[Definition](_definition.md):** One or more citations required when using or referencing the term. Expressed as formatted text. Each element is a bibliographic reference or acknowledgement that data users must include when publishing datasets that use the term.

**[Description](_description.md)**

`_citation` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It is used when the term originates from a published standard, scientific paper, or data resource that requires attribution.

For terms derived from ISO standards or other normative sources, the citation identifies the source document. For terms derived from scientific literature, the citation is the primary reference for the underlying concept or measurement.

**[Examples](_examples.md)**

A citation for a term derived from an ISO standard:

```json
{
	"_citation": {
		"ISO_639_3_eng": "ISO 3166-1:2020 — Codes for the representation of names of countries and their subdivisions. Geneva: International Organization for Standardization."
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Citations"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Multilingual formatted text](_info_text.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_info_text"
}
```

</details>
