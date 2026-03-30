# `_unit-symbol`

**`_title`**

Unit symbol

**`_definition`**

A free-text unit symbol string, used when no codified `_unit` is available. Stored as a LaTeX string. Mutually exclusive with `_unit`.

**`_description`**

`_unit-symbol` is the symbol companion to [`_unit-name`](_unit-name.md) for cases where the measurement unit is not in a [unit vocabulary](_unit.md). Its value is a [LaTeX](https://www.latex-project.org) string — plain [Unicode](https://en.wikipedia.org/wiki/Unicode) characters for simple symbols (e.g. `°C`, `μg`) and LaTeX syntax for complex expressions (e.g. `\frac{kg}{m^3}`).

`_unit-symbol` is mutually exclusive with [`_unit`](_unit.md). Unit symbols are language-independent and stored as a single string rather than a multilingual dictionary.

**`_examples`**

A unit symbol for micrograms per litre:

```json
{
	"_unit-symbol": "\\mu g/L"
}
```

A unit symbol for degrees Celsius:

```json
{
	"_unit-symbol": "°C"
}
```

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "unit-symbol",
	"_gid": "_unit-symbol",
	"_aid": ["unit-symbol"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_string_LaTeX"
	}
}
```

**`_domn`**

```json
{}
```
