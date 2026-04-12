# Unit name
<p style="color: #888; margin-top: -0.5em;"><code>_unit_name</code></p>

> The companion property for specifying the plain-text name of a unit of measurement when the unit is not available in the `_unit` controlled vocabulary. Its value is a plain UTF-8 string. Mutually exclusive with `_unit` and `_unit_symbol`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Unit](_unit.md) |
| [Local identifier](_lid.md) | `name` |
| [Global identifier](_gid.md) | `_unit_name` |
| [Official identifiers](_aid.md) | `name` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Unit name

**[Definition](_definition.md):** The companion property for specifying the plain-text name of a unit of measurement when the unit is not available in the `_unit` controlled vocabulary. Its value is a plain UTF-8 string. Mutually exclusive with `_unit` and `_unit_symbol`.

**[Description](_description.md)**

`_unit_name` is an optional companion property for numeric and string scalar types, used when the required unit of measurement has no corresponding term in the [`_unit`](_unit.md) controlled vocabulary. The value is a plain UTF-8 string containing the human-readable unit name.

`_unit_name` is mutually exclusive with [`_unit`](_unit.md): if the unit exists in the controlled vocabulary, use `_unit` instead. It may appear alongside [`_unit_symbol`](_unit_symbol.md) to provide both a readable name and a typographic symbol for the same unit.

**[Examples](_examples.md)**

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
    "ISO_639_3_eng" : "Unit name"
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
