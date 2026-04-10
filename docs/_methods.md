# `_methods`

**`_title`**

Methods

**`_definition`**

Documentation of the measurement conditions, methods, and protocols required to produce a valid value for the term. Expressed as formatted text.

**`_description`**

`_methods` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It is used for descriptor terms that represent measured or observed quantities where the value is only meaningful in the context of a specific measurement protocol — for example, body weight measured on an empty stomach, or blood pressure recorded after five minutes of rest.

When measurement conditions affect the comparability of values across datasets, `_methods` should be provided so that data consumers understand under what circumstances the value was obtained.

**`_examples`**

A methods entry for a body weight measurement:

```json
{
	"_methods": {
		"ISO_639_3_eng": "Measure in the morning after an overnight fast, with the subject standing upright on a calibrated scale, wearing minimal clothing. Record to the nearest 0.1 kg."
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "methods"
  ],
  "_gid" : "_methods",
  "_lid" : "methods",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_typedef" : "_info_text"
}
```
