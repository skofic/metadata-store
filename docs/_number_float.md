# Floating point number
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_number_float</code></p>

> The scalar data type for floating-point numbers. Values must be stored and treated as floating-point; integer values are accepted but treated as floats. A sub-type of `_number`; `_decimals` is permitted.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Number](_number.md) |
| [Local identifier](_lid.md) | `float` |
| [Global identifier](_gid.md) | `_number_float` |
| [Official identifiers](_aid.md) | `float` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "float"
  ],
  "_gid" : "_number_float",
  "_lid" : "float",
  "_nid" : "_number"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Floating point number

**[Definition](_definition.md):** The scalar data type for floating-point numbers. Values must be stored and treated as floating-point; integer values are accepted but treated as floats. A sub-type of `_number`; `_decimals` is permitted.

**[Description](_description.md)**

`_number_float` is a sub-type of [`_number`](_number.md). It requires the value to be stored and displayed as a floating-point number. Integer values are accepted but treated as floats. [`_decimals`](_decimals.md) is permitted to control display precision. Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

A floating-point weight with two decimal places:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 2,
			"_unit": "_unit_weight_kg"
		}
	}
}
```

Stored values: `3.14159`, `0.0`, `98.6`, `-2.5`.

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
    "ISO_639_3_eng" : "Floating point number"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Unit](_unit.md) · [Unit name](_unit_name.md) · [Unit symbol](_unit_symbol.md) · [Valid numeric range](_range_valid.md) · [Normal numeric range](_range_normal.md) · `_decimals`

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_unit",
        "_unit_name",
        "_unit_symbol",
        "_range_valid",
        "_range_normal",
        "_decimals"
      ]
    }
  }
}
```

</details>
