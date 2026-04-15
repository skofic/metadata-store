# Normal numeric range
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a> <a href="_term_role_namespace.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Namespace</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_range_normal</code></p>

> The companion property that defines the expected numeric boundaries for a scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_number`, `_number_float`, `_number_integer`, and `_timestamp`. Its shape follows the `_range` typedef.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Numeric range](_range.md) |
| [Local identifier](_lid.md) | `normal` |
| [Global identifier](_gid.md) | `_range_normal` |
| [Official identifiers](_aid.md) | `normal` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "normal"
  ],
  "_gid" : "_range_normal",
  "_lid" : "normal",
  "_nid" : "_range"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Normal numeric range

**[Definition](_definition.md):** The companion property that defines the expected numeric boundaries for a scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_number`, `_number_float`, `_number_integer`, and `_timestamp`. Its shape follows the `_range` typedef.

**[Description](_description.md)**

`_range_normal` is an optional companion property for numeric scalar types. When present, the stored value is compared against the specified boundaries to determine whether it is within the expected distribution; a value outside the normal range is treated as an **outlier warning**, not an error.

The value is a [`_range`](_range.md) object with the same structure as [`_range_valid`](_range_valid.md). The two properties may both be present on the same scalar: `_range_valid` enforces hard limits, while `_range_normal` marks the subset of valid values considered typical.

**[Examples](_examples.md)**

Human body temperature in degrees Celsius — valid up to 45 °C, normal between 35.5 and 38.5 °C:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 1,
			"_unit": ["_unit_temperature_C"],
			"_range_valid": {
				"_min-inclusive": 25.0,
				"_max-inclusive": 45.0
			},
			"_range_normal": {
				"_min-inclusive": 35.5,
				"_max-inclusive": 38.5
			}
		}
	}
}
```

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
    "ISO_639_3_eng" : "Normal numeric range"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Numeric range](_range.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_range"
}
```

</details>
