# Number
<p style="color: #888; margin-top: -0.5em;"><code>_number</code></p>

> The scalar data type for any numeric value, accepting both integers and floating-point numbers. Parent type of `_number_float` and `_number_integer`, which add stricter format constraints. When used as the type key, `_decimals` and all range and unit companion properties are permitted.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `number` |
| [Global identifier](_gid.md) | `_number` |
| [Official identifiers](_aid.md) | `number` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "number",
  "_gid": "_number",
  "_aid": [
    "number"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Number

**[Definition](_definition.md):** The scalar data type for any numeric value, accepting both integers and floating-point numbers. Parent type of `_number_float` and `_number_integer`, which add stricter format constraints. When used as the type key, `_decimals` and all range and unit companion properties are permitted.

**[Description](_description.md)**

`_number` serves a dual role. As a type key inside [`_scalar`](_scalar.md), it declares that the value is any numeric value — integer or floating-point. As a parent type, it is the root of [`_number_float`](_number_float.md) and [`_number_integer`](_number_integer.md), which further constrain the accepted format.

When `_number` is the type key, companion properties [`_decimals`](_decimals.md) and all range and unit properties are permitted. Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

A number with a valid range:

```json
{
	"_scalar": {
		"_number": {
			"_range_valid": {
				"_min-inclusive": 0,
				"_max-exclusive": 100
			}
		}
	}
}
```

Stored values: `42`, `3.14`, `-100`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Number"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_recommended": [
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
