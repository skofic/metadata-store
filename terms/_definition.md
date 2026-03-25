# `_definition`

**`_title`**

Definition

**`_definition`**

A concise explanation of what the term represents, sufficient for an informed reader to understand it without needing the full description. Expressed as plain text in two to four sentences.

**`_description`**

[`_definition`](_definition.md) is a property of the [`_info`](_info.md) section. Its value is a multilingual dictionary (a [`_info_string`](_info_string.md) typedef) keyed by language [`_gid`](_gid.md)s.

The definition is what an informed reader sees first. It should answer the question *what is this?* in the minimum number of sentences. It is not the place for usage guidance, measurement methods, or context — those belong in [`_description`](_description.md). Two to four plain-text sentences are the target length.

```json
{
	"_definition": {
		"ISO_639_3_eng": "The mass of the subject's body measured without clothing or shoes. Expressed in kilograms to one decimal place."
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "definition"
  ],
  "_gid" : "_definition",
  "_lid" : "definition",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_type" : "_info_string"
}
```
