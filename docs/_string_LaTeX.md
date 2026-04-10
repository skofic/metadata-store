# `_string_LaTeX`

**`_title`**

LaTeX string

**`_definition`**

The scalar data type for LaTeX expressions. Plain Unicode characters are also valid. Rendered in frontends using KaTeX. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_LaTeX` declares that the value is a LaTeX string. [LaTeX](https://www.latex-project.org) is a superset of plain [UTF-8](https://en.wikipedia.org/wiki/UTF-8) text, so simple symbols (e.g. `°C`, `μg`) may be stored as plain [Unicode](https://en.wikipedia.org/wiki/Unicode) while complex expressions use LaTeX syntax (e.g. `\bar{x} \pm \sigma`). No companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_LaTeX": {}
	}
}
```

Stored values: `"°C"`, `"E = mc^{2}"`, `"r^{2}"`.

---

**`_code`**

```json
{
  "_aid" : [
    "LaTeX"
  ],
  "_gid" : "_string_LaTeX",
  "_lid" : "LaTeX",
  "_nid" : "_string"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
