# Usage
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_usage</code></p>

> Explains how and why the value represented by the term is used in a dataset or application. Expressed as formatted text.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `usage` |
| [Global identifier](_gid.md) | `_usage` |
| [Official identifiers](_aid.md) | `usage` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "usage"
  ],
  "_gid" : "_usage",
  "_lid" : "usage",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Usage

**[Definition](_definition.md):** Explains how and why the value represented by the term is used in a dataset or application. Expressed as formatted text.

**[Description](_description.md)**

`_usage` is expressed as an [`_info_text`](_info_text.md) — a multilingual [Markdown](_text_Markdown.md) or [HTML](_text_HTML.md) formatted text dictionary. It documents the intended application context: which datasets use the term, which workflows depend on it, and any conventions around when to include or omit it.

`_usage` differs from [`_description`](_description.md) in focus: `_description` explains what the term *is*; `_usage` explains how it is *applied* in practice.

**[Examples](_examples.md)**

A usage note for a body weight descriptor:

```json
{
	"_usage": {
		"ISO_639_3_eng": "Used in nutritional surveys and clinical records to track changes over time. Always pair with a measurement date descriptor. Do not use for cargo or object weight — use the generic weight descriptor instead."
	}
}
```

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
    "ISO_639_3_eng" : "Usage"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Multilingual formatted text](_info_text.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_info_text"
}
```

</details>
