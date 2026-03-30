# `_notes`

**`_title`**

Notes

**`_definition`**

Additional information that does not fit in other properties — informal annotations, caveats, known issues, or curator feedback. Expressed as a Markdown or HTML string.

**`_description`**

`_notes` is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_formatted`](_info_string_formatted.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown** or **HTML** string.

Notes act as a scrapbook for the metadata curator. Appropriate content includes known edge cases or exceptions not covered by the definition or description, caveats about data quality or collection methodology, temporary workarounds or pending decisions, and curator comments and review feedback.

Content that becomes stable and authoritative should be moved to [`_description`](_description.md).

**`_examples`**

```json
{
	"_notes": {
		"ISO_639_3_eng": "Values recorded before 2018 used a different scale (model XR-200); apply a correction factor of 0.997 before comparing with later measurements."
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "notes",
	"_gid": "_notes",
	"_aid": ["notes"]
}
```

**`_data`**

```json
{
	"_typedef": "_info_string_formatted"
}
```

**`_domn`**

```json
{}
```
