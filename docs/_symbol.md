# Symbol
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_symbol</code></p>

> A symbolic representation of the term, stored as a LaTeX string. Plain Unicode characters are used for simple symbols; LaTeX syntax is used for mathematical expressions. Rendered by the frontend using KaTeX.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `symbol` |
| [Global identifier](_gid.md) | `_symbol` |
| [Official identifiers](_aid.md) | `symbol` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "symbol"
  ],
  "_gid" : "_symbol",
  "_lid" : "symbol",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Symbol

**[Definition](_definition.md):** A symbolic representation of the term, stored as a LaTeX string. Plain Unicode characters are used for simple symbols; LaTeX syntax is used for mathematical expressions. Rendered by the frontend using KaTeX.

**[Description](_description.md)**

The symbol provides a compact, typographically precise representation of the concept the term stands for. It is stored as a **LaTeX string**: because [LaTeX](https://www.latex-project.org) is a superset of plain UTF-8 text, simple symbols such as `€`, `μ`, or `°C` can be written as plain Unicode, while complex mathematical expressions use LaTeX syntax — for example `\bar{x} \pm \sigma` or `\frac{n!}{k!(n-k)!}`.

The frontend renders this field using [KaTeX](https://katex.org), which handles both plain Unicode and LaTeX notation seamlessly, requiring no distinction between the two in the stored value.

This property is optional. Include it when the term has a well-established symbolic notation that aids recognition — a currency symbol, a physical unit abbreviation, or a statistical formula.

**[Examples](_examples.md)**

Simple Unicode symbols stored as plain text:

- `€` — Euro sign (ISO 4217 currency term for the Euro)
- `μ` — Micro prefix (SI unit prefix term)
- `°C` — Degrees Celsius (temperature unit term)

Mathematical expressions stored as LaTeX strings:

- `\bar{x} \pm \sigma` — sample mean plus or minus one standard deviation
- `\frac{n!}{k!(n-k)!}` — binomial coefficient

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Symbol"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [LaTeX string](_string_LaTeX.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string_LaTeX" : {

    }
  }
}
```

</details>
