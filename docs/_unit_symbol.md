# Unit symbol
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_unit_symbol</code></p>

> The companion property for specifying the unit symbol in LaTeX format when the unit is not available in the `_unit` controlled vocabulary. Its value is a `_string_LaTeX` expression, suitable for rendering with KaTeX. Mutually exclusive with `_unit` and `_unit_symbol`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Unit](_unit.md) |
| [Local identifier](_lid.md) | `symbol` |
| [Global identifier](_gid.md) | `_unit_symbol` |
| [Official identifiers](_aid.md) | `symbol` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "symbol"
  ],
  "_gid" : "_unit_symbol",
  "_lid" : "symbol",
  "_nid" : "_unit"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unit symbol

**[Definition](_definition.md):** The companion property for specifying the unit symbol in LaTeX format when the unit is not available in the `_unit` controlled vocabulary. Its value is a `_string_LaTeX` expression, suitable for rendering with KaTeX. Mutually exclusive with `_unit` and `_unit_symbol`.

**[Description](_description.md)**

`_unit_symbol` is an optional companion property for numeric and string scalar types, used alongside [`_unit_name`](_unit_name.md) when the unit of measurement has no term in the [`_unit`](_unit.md) controlled vocabulary. The value is a [`_string_LaTeX`](_string_LaTeX.md) expression that produces the typographic symbol for the unit when rendered.

`_unit_symbol` is mutually exclusive with `_unit`: if the unit exists in the controlled vocabulary, use `_unit` instead. It may appear alongside `_unit_name` to provide both a readable name and a symbol.

**[Examples](_examples.md)**

A concentration measurement with name and symbol:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 2,
			"_unit_name": "micrograms per litre",
			"_unit_symbol": "\\mu\\text{g/L}"
		}
	}
}
```

Stored values (LaTeX strings): `"\\text{mbar}"`, `"\\mathrm{kg/m^3}"`, `"\\mu\\text{g/L}"`.

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
    "ISO_639_3_eng" : "Unit symbol"
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
