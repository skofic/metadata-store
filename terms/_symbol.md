# `_symbol`

**`_title`**

Symbol

**`_definition`**

A symbolic representation of the term, stored as a LaTeX string. Plain Unicode characters are used for simple symbols; LaTeX syntax is used for mathematical expressions. Rendered by the frontend using KaTeX.

**`_description`**

The *symbol* provides a compact, typographically precise representation of the concept the term stands for. It is stored as a **LaTeX string**: because [LaTeX](https://www.latex-project.org) is a superset of plain UTF-8 text, simple symbols such as `€`, `μ`, or `°C` can be written as plain Unicode characters, while complex mathematical expressions use LaTeX syntax — for example `\bar{x} \pm \sigma` or `\frac{n!}{k!(n-k)!}`.

The frontend renders this field using [KaTeX](https://katex.org), which handles both plain Unicode and LaTeX notation seamlessly, requiring no distinction between the two in the stored value.

This property is optional. Include it when the term has a well-established symbolic notation that aids recognition — such as a currency symbol, a physical unit abbreviation, or a statistical formula.

**`_examples`**

Simple Unicode symbols stored as plain text:

- `€` — Euro sign (ISO 4217 currency term for the Euro)
- `μ` — Micro prefix (SI unit prefix term)
- `°C` — Degrees Celsius (temperature unit term)

Mathematical expressions stored as LaTeX strings:

- `\bar{x} \pm \sigma` — sample mean plus or minus one standard deviation
- `\frac{n!}{k!(n-k)!}` — binomial coefficient
