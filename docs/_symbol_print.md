# Unicode symbol for display
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_symbol_print</code></p>

> A Unicode plain-text symbol for the term, used when a LaTeX renderer is not available.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Symbol](_symbol.md) |
| [Local identifier](_lid.md) | `print` |
| [Global identifier](_gid.md) | `_symbol_print` |
| [Official identifiers](_aid.md) | `print` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "print"
  ],
  "_gid" : "_symbol_print",
  "_lid" : "print",
  "_nid" : "_symbol"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unicode symbol for display

**[Definition](_definition.md):** A Unicode plain-text symbol for the term, used when a LaTeX renderer is not available.

**[Description](_description.md)**

The companion [`_symbol`](_symbol.md) property holds a LaTeX string for high-fidelity mathematical rendering. `_symbol_print` provides a plain Unicode fallback for environments that cannot render LaTeX, such as plain-text logs, CSV exports, or simple web pages.

Where `_symbol` might be `\mathrm{kg\,m^{-2}}`, `_symbol_print` would be `kg/m²`. Both properties are optional and independent; a term may carry either, both, or neither.

**[Examples](_examples.md)**

| Term | `_symbol` (LaTeX) | `_symbol_print` (Unicode) |
|---|---|---|
| Kilometre | `\mathrm{km}` | `km` |
| Kilograms per square metre | `\mathrm{kg\,m^{-2}}` | `kg/m²` |
| Degrees Celsius | `^\circ\mathrm{C}` | `°C` |
| Tonnes per hectare | `\mathrm{t\,ha^{-1}}` | `t/ha` |

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
    "ISO_639_3_eng" : "Unicode symbol for display"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [String](_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```

</details>
