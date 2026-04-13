# Integer number
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_number_integer</code></p>

> The scalar data type for integer numbers. Values must have no decimal part; floating-point numbers are rejected. A sub-type of `_number`; `_decimals` is not permitted.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Number](_number.md) |
| [Local identifier](_lid.md) | `integer` |
| [Global identifier](_gid.md) | `_number_integer` |
| [Official identifiers](_aid.md) | `integer` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "integer"
  ],
  "_gid" : "_number_integer",
  "_lid" : "integer",
  "_nid" : "_number"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Integer number

**[Definition](_definition.md):** The scalar data type for integer numbers. Values must have no decimal part; floating-point numbers are rejected. A sub-type of `_number`; `_decimals` is not permitted.

**[Description](_description.md)**

`_number_integer` is a sub-type of [`_number`](_number.md). It restricts values to whole numbers — no decimal part is allowed. [`_decimals`](_decimals.md) is not permitted. Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

A non-negative integer count:

```json
{
	"_scalar": {
		"_number_integer": {
			"_range_valid": {
				"_min-inclusive": 0
			}
		}
	}
}
```

Stored values: `42`, `-7`, `2024`, `0`.

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
    "ISO_639_3_eng" : "Integer number"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Unit](_unit.md) · [Unit name](_unit_name.md) · [Unit symbol](_unit_symbol.md) · [Valid numeric range](_range_valid.md) · [Normal numeric range](_range_normal.md)

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
        "_range_normal"
      ]
    }
  }
}
```

</details>
