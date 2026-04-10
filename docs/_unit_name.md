# `_unit_name`

**`_title`**

Unit name

**`_definition`**

The companion property for specifying the plain-text name of a unit of measurement when the unit is not available in the `_unit` controlled vocabulary. Its value is a plain UTF-8 string. Mutually exclusive with `_unit` and `_unit_symbol`.

**`_description`**

`_unit_name` is an optional companion property for numeric and string scalar types, used when the required unit of measurement has no corresponding term in the [`_unit`](_unit.md) controlled vocabulary. The value is a plain UTF-8 string containing the human-readable unit name.

`_unit_name` is mutually exclusive with [`_unit`](_unit.md): if the unit exists in the controlled vocabulary, use `_unit` instead. It may appear alongside [`_unit_symbol`](_unit_symbol.md) to provide both a readable name and a typographic symbol for the same unit.

**`_examples`**

A measurement in millibars, a unit not in the core vocabulary:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 1,
			"_unit_name": "millibar"
		}
	}
}
```

Stored values: `"millibar"`, `"international unit"`, `"parts per million"`.

---

**`_code`**

```json
{
  "_aid" : [
    "name"
  ],
  "_gid" : "_unit_name",
  "_lid" : "name",
  "_nid" : "_unit"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_string" : {

    }
  }
}
```
