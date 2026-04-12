# Normal string range
<p style="color: #888; margin-top: -0.5em;"><code>_range_normal_string</code></p>

> The companion property that defines the expected lexicographic boundaries for a string scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_string`, `_string_HEX`, and date/time string types. Its shape follows the `_range_string` typedef.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Normal numeric range](_range_normal.md) |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_range_normal_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_range_normal_string",
  "_lid" : "string",
  "_nid" : "_range_normal"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Normal string range

**[Definition](_definition.md):** The companion property that defines the expected lexicographic boundaries for a string scalar value. Values outside the normal range are flagged as outliers but are not treated as errors. Accepted by `_string`, `_string_HEX`, and date/time string types. Its shape follows the `_range_string` typedef.

**[Description](_description.md)**

`_range_normal_string` is an optional companion property for string scalar types. When present, the stored string value is compared against the specified lexicographic boundaries to determine whether it is within the expected distribution; a value outside the normal range is treated as an **outlier warning**, not an error.

The value is a [`_range_string`](_range_string.md) object with the same structure as [`_range_valid_string`](_range_valid_string.md). The two properties may both be present on the same scalar: `_range_valid_string` enforces hard limits, while `_range_normal_string` marks the subset of valid values considered typical.

**[Examples](_examples.md)**

A date field where dates before 2000 are valid but unusual:

```json
{
	"_scalar": {
		"_string_date": {
			"_range_valid_string": {
				"_string_min-inclusive": "1900-01-01"
			},
			"_range_normal_string": {
				"_string_min-inclusive": "2000-01-01"
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
    "ISO_639_3_eng" : "Normal string range"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [String range](_range_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_range_string"
}
```

</details>
