# `_usage`

**`_title`**

Usage

**`_definition`**

Guidance on how and why the term is used in practice, and what applications it serves. Complements the description by focusing on practical application rather than conceptual explanation. Expressed as a Markdown or HTML string.

**`_description`**

`_usage` is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string_formatted`](_info_string_formatted.md) typedef) keyed by language [`_gid`](_gid.md)s, with each value expressed as a **[Markdown](https://en.wikipedia.org/wiki/Markdown)** or **[HTML](https://en.wikipedia.org/wiki/HTML)** string.

Where [`_description`](_description.md) explains what a term *is*, `_usage` explains how it is *applied*. Appropriate content includes:

- Common use cases and typical application contexts
- When to prefer this term over a similar one
- Integration guidance for systems consuming the dictionary
- Known limitations or constraints on applicability
- Recommendations on value interpretation

This property is most useful for descriptor terms that require guidance beyond their definition and description — for example, terms whose correct application depends on domain context or whose scope is easily misunderstood.

**`_examples`**

```json
{
	"_usage": {
		"ISO_639_3_eng": "Use this descriptor when recording body weight as part of a clinical or nutritional assessment. For research datasets that require both fasted and non-fasted measurements, define two separate descriptors (one per protocol) rather than using this term for both. Do not use for load measurements or non-biological weights."
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "usage"
  ],
  "_gid" : "_usage",
  "_lid" : "usage",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_typedef" : "_info_string_formatted"
}
```
