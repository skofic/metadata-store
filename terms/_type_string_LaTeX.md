# `_type_string_LaTeX`

**`_title`**

LaTeX

**`_definition`**

The scalar data type for LaTeX expressions. Plain Unicode characters are also valid. Rendered in frontends using KaTeX. The type carries its own format constraint; `_regexp` is not applicable.

**`_description`**

`_type_string_LaTeX` declares that the value is a LaTeX string. [LaTeX](https://www.latex-project.org) is a superset of plain [UTF-8](https://en.wikipedia.org/wiki/UTF-8) text, so simple symbols (e.g. `°C`, `μg`) may be stored as plain [Unicode](https://en.wikipedia.org/wiki/Unicode) while complex expressions use LaTeX syntax (e.g. `\bar{x} \pm \sigma`). No `_regexp` is applicable. Excluded from [`_type_data_comparable`](_type_data_comparable.md).

---

**`_code`**

```json
{
	"_nid": "_type_string",
	"_lid": "LaTeX",
	"_gid": "_type_string_LaTeX",
	"_aid": ["LaTeX"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
