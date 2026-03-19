# `_unit-symbol`

**`_title`**

Unit Symbol

**`_definition`**

The symbol of the measurement unit, stored as a LaTeX string. Used when the unit is not available as a codified entry in the `_unit` controlled vocabulary. It corresponds to the `_symbol` field of the `_code` section of the unit term, if one existed.

**`_description`**

`_unit-symbol` is an optional companion to [`_unit-name`](_unit-name.md), used when a codified [`_unit`](_unit.md) entry is not available. It stores the unit's symbol as a [LaTeX](_kind_string_LaTeX.md) string rendered by KaTeX on the frontend.

Because LaTeX is a superset of plain UTF-8, simple symbols can be stored as plain Unicode (e.g. `μg`, `°C`) while compound or mathematical symbols use LaTeX syntax (e.g. `\mu g`, `\frac{mg}{dL}`, `km\,h^{-1}`).

The value is a single string, not multilingual — symbols are language-neutral by convention.

```json
{
	"_scalar": {
		"_type": "_type_number",
		"_kind_number": ["_kind_number_float"],
		"_unit-name": {"ISO_639_3_eng": "milligrams per decilitre"},
		"_unit-symbol": "\\frac{mg}{dL}"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "unit-symbol"
  ],
  "_gid" : "_unit-symbol",
  "_lid" : "unit-symbol",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_string" : "_kind_string_LaTeX",
    "_type" : "_type_string"
  }
}
```
