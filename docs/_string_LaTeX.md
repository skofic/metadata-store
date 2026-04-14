# LaTeX string
<p style="color: #888; margin-top: -0.5em;"><code>_string_LaTeX</code></p>

> The scalar data type for LaTeX expressions. Plain Unicode characters are also valid. Rendered in frontends using KaTeX. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `LaTeX` |
| [Global identifier](_gid.md) | `_string_LaTeX` |
| [Official identifiers](_aid.md) | `LaTeX` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "LaTeX",
  "_gid": "_string_LaTeX",
  "_aid": [
    "LaTeX"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** LaTeX string

**[Definition](_definition.md):** The scalar data type for LaTeX expressions. Plain Unicode characters are also valid. Rendered in frontends using KaTeX. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**[Description](_description.md)**

`_string_LaTeX` declares that the value is a LaTeX string. [LaTeX](https://www.latex-project.org) is a superset of plain [UTF-8](https://en.wikipedia.org/wiki/UTF-8) text, so simple symbols (e.g. `°C`, `μg`) may be stored as plain [Unicode](https://en.wikipedia.org/wiki/Unicode) while complex expressions use LaTeX syntax (e.g. `\bar{x} \pm \sigma`). No companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_LaTeX": {}
	}
}
```

Stored values: `"°C"`, `"E = mc^{2}"`, `"r^{2}"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "LaTeX string"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {}
  }
}
```

</details>
