# `_description`

**`_title`**

Description

**`_definition`**

Full description of the term aimed at a non-expert audience. Should explain what the term is, how it is used, why it exists, and link to external documentation where relevant. Expressed as a Markdown or HTML string.

**`_description`**

`_description` is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_formatted`](_info_string_formatted.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **Markdown** or **HTML** string.

The description is the main informational body of a term. While [`_definition`](_definition.md) answers *what is this?*, the description answers *how is it used?* and *why does it exist?*. It is aimed at a non-expert reader and may include background and context, usage guidance, links to external documentation or standards, and formatted tables, lists, and code blocks.

The description is required on most terms; it may be omitted only when the definition alone is sufficient beyond any reasonable doubt — typically only for alias terms or terms whose meaning is entirely self-evident from their definition.

**`_examples`**

```json
{
	"_description": {
		"ISO_639_3_eng": "Body weight is recorded at every clinical visit as a primary indicator of nutritional status and treatment response. Values are stored in kilograms; conversion from pounds must be applied before entry. See the [WHO anthropometric reference](https://www.who.int/tools/child-growth-standards) for age-specific normal ranges."
	}
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "description",
	"_gid": "_description",
	"_aid": ["description"]
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
