# `_notes`

**`_title`**

Notes

**`_definition`**

Additional information that does not fit in other properties — informal annotations, caveats, known issues, or curator feedback. Expressed as a Markdown or HTML string.

**`_description`**

[`_notes`](_notes.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_Markdown`](_info_string_Markdown.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown or HTML string**.

Notes act as a scrapbook for the metadata curator. Appropriate content includes:

- Known edge cases or exceptions not covered by the definition or description
- Caveats about data quality or collection methodology
- Temporary workarounds or pending decisions
- Curator comments and review feedback

Notes should not duplicate content from other `_info` properties. Content that becomes stable and authoritative should be moved to [`_description`](_description.md).

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
  "_type" : "_info_string_Markdown"
}
```
