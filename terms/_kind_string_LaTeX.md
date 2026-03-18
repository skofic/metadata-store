# `_kind_string_LaTeX`

**`_title`**

LaTeX

**`_definition`**

An enumeration element indicating that the string value is a LaTeX expression. LaTeX is a superset of plain UTF-8 text: simple symbols may be stored as plain Unicode characters while complex mathematical expressions use LaTeX syntax. Values are rendered with KaTeX.

**`_description`**

`_kind_string_LaTeX` qualifies a [`_type_string`](_type_string.md) scalar as a LaTeX expression. Because LaTeX is a superset of plain UTF-8, the same field can store anything from a plain symbol such as `μ` or `°C` to a full mathematical expression such as `\bar{x} \pm \sigma` or `\frac{n!}{k!(n-k)!}`. The frontend renders the value using **KaTeX**, which handles both plain Unicode and LaTeX syntax seamlessly.

This qualifier is used for the `_symbol` property of the [`_code`](_code.md) section, where terms carry a mathematical or scientific symbol.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_LaTeX"
	}
}
```

A valid value for a standard deviation descriptor might be `\sigma`, and for a binomial coefficient `\binom{n}{k}`.

---

**`_code`**

```json
{
  "_aid" : [
    "LaTeX"
  ],
  "_gid" : "_kind_string_LaTeX",
  "_lid" : "LaTeX",
  "_nid" : "_kind_string"
}
```
