# `_notes`

**`_title`**

Notes

**`_definition`**

Internal notes, comments, and curator feedback about the term. Expressed as formatted text. Intended for dictionary maintainers, not end users.

**`_description`**

`_notes` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It captures working notes useful to the curation team but not part of the formal term documentation: known issues, pending decisions, historical context, or flags for review.

Contents of `_notes` should not be surfaced to end users in production interfaces.

**`_examples`**

A note flagging a pending design decision:

```json
{
	"_notes": {
		"ISO_639_3_eng": "The unit convention for this term is under review. Currently kilograms; may be extended to support pounds in a future revision."
	}
}
```

---

**`_code`**

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

**`_data`**

```json
{
  "_typedef" : "_info_text"
}
```
