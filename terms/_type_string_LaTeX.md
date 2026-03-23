# `_type_string_LaTeX`

**`_title`**

LaTeX

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for a LaTeX expression. LaTeX is a superset of plain UTF-8 text: simple symbols may be stored as plain Unicode characters while complex mathematical expressions use LaTeX syntax. Values are rendered with KaTeX.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_LaTeX`, the descriptor value is a LaTeX expression. Because LaTeX is a superset of plain UTF-8, the same field can store anything from a plain symbol such as `μ` or `°C` to a full mathematical expression such as `\bar{x} \pm \sigma`. The frontend renders the value using **KaTeX**, which handles both plain Unicode and LaTeX syntax.

This type is used for the [`_symbol`](_symbol.md) property of the [`_code`](_code.md) section.

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_LaTeX"
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
  "_gid" : "_type_string_LaTeX",
  "_lid" : "LaTeX",
  "_nid" : "_type_string"
}
```
