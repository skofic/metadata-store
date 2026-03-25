# `_title`

**`_title`**

Title

**`_definition`**

The name or label of the term used when displaying it in forms and reports. Should be short, specific, and no more than five words, without trailing punctuation.

**`_description`**

[`_title`](_title.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string`](_info_string.md) typedef) keyed by language [`_gid`](_gid.md)s.

The title is the primary label for the term in any user-facing context — it appears as the field label in data entry forms, as the column header in data tables, and as the display name in navigation. It should be:

- **Short**: ideally one to five words.
- **Specific**: unambiguous within its context.
- **Unpunctuated**: no trailing period or colon.

```json
{
	"_title": {
		"ISO_639_3_eng": "Body weight",
		"ISO_639_3_ita": "Peso corporeo",
		"ISO_639_3_fra": "Poids corporel"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "title"
  ],
  "_gid" : "_title",
  "_lid" : "title",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string"
}
```
