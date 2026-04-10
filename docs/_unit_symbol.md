# `_unit_symbol`

**`_title`**

Unit symbol

**`_definition`**

The companion property for specifying the unit symbol in LaTeX format when the unit is not available in the `_unit` controlled vocabulary. Its value is a `_string_LaTeX` expression, suitable for rendering with KaTeX. Mutually exclusive with `_unit` and `_unit_symbol`.

**`_description`**

`_unit_symbol` is an optional companion property for numeric and string scalar types, used alongside [`_unit_name`](_unit_name.md) when the unit of measurement has no term in the [`_unit`](_unit.md) controlled vocabulary. The value is a [`_string_LaTeX`](_string_LaTeX.md) expression that produces the typographic symbol for the unit when rendered.

`_unit_symbol` is mutually exclusive with [`_unit`](_unit.md): if the unit exists in the controlled vocabulary, use `_unit` instead. It may appear alongside `_unit_name` to provide both a readable name and a symbol.

**`_examples`**

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

---

**`_code`**

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

**`_data`**

```json
{
  "_scalar" : {
    "_string_LaTeX" : {

    }
  }
}
```
