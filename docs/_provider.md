# Providers
<p style="color: #888; margin-top: -0.5em;"><code>_provider</code></p>

> Contact information for the metadata curators responsible for the term. Expressed as formatted text. Identifies who to contact for questions, corrections, or contributions.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `provider` |
| [Global identifier](_gid.md) | `_provider` |
| [Official identifiers](_aid.md) | `provider` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Providers

**[Definition](_definition.md):** Contact information for the metadata curators responsible for the term. Expressed as formatted text. Identifies who to contact for questions, corrections, or contributions.

**[Description](_description.md)**

`_provider` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It records the individuals or organisations that manage the term — who created it, who maintains it, and how to reach them.

For terms maintained by international standards bodies, the provider is the standards organisation. For terms created by data projects, the provider is the project or research group responsible.

**[Examples](_examples.md)**

A provider entry for a term maintained by a research group:

```json
{
	"_provider": {
		"ISO_639_3_eng": "Biodiversity Data Institute — metadata@bdi.example.org"
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
    "ISO_639_3_eng" : "Providers"
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
