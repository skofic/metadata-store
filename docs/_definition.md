# `_definition`

**`_title`**

Definition

**`_definition`**

A self-contained definition of the term in plain text. Sufficient for an informed reader to understand the term without additional context. Typically two to four sentences.

**`_description`**

`_definition` provides a compact, authoritative definition of what the term represents. It is expressed as an [`_info_string`](_info_string.md) — a multilingual plain-text dictionary. Unlike [`_description`](_description.md), which may include formatting and links, `_definition` is always plain text; backtick formatting for identifiers is the only exception.

A good definition names the entity type, states the key attribute or constraint, and distinguishes the term from closely related terms. It should stand alone without requiring the reader to consult other properties.

**`_examples`**

A definition for a body weight descriptor:

```json
{
	"_definition": {
		"ISO_639_3_eng": "The total mass of a person's body measured at a specific point in time. Expressed in kilograms. Used to monitor health status and calculate body mass index."
	}
}
```

---

**`_code`**

```json
{
  "_gid": "_definition",
  "_lid": "definition",
  "_nid": "",
  "_aid": ["definition"]
}
```

**`_data`**

```json
{
  "_typedef": "_info_string"
}
```
