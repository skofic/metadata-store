# Notes
<p style="color: #888; margin-top: -0.5em;"><code>_notes</code></p>

> Internal notes, comments, and curator feedback about the term. Expressed as formatted text. Intended for dictionary maintainers, not end users.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `notes` |
| [Global identifier](_gid.md) | `_notes` |
| [Official identifiers](_aid.md) | `notes` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "notes"
  ],
  "_gid" : "_notes",
  "_lid" : "notes",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Notes

**[Definition](_definition.md):** Internal notes, comments, and curator feedback about the term. Expressed as formatted text. Intended for dictionary maintainers, not end users.

**[Description](_description.md)**

`_notes` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It captures working notes useful to the curation team but not part of the formal term documentation: known issues, pending decisions, historical context, or flags for review.

Contents of `_notes` should not be surfaced to end users in production interfaces.

**[Examples](_examples.md)**

A note flagging a pending design decision:

```json
{
	"_notes": {
		"ISO_639_3_eng": "The unit convention for this term is under review. Currently kilograms; may be extended to support pounds in a future revision."
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
    "ISO_639_3_eng" : "Notes"
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
