# Valid string range
<p style="color: #888; margin-top: -0.5em;"><code>_range_valid_string</code></p>

> The companion property that defines hard lexicographic boundaries for a string scalar value. Values outside the valid range are treated as errors. Accepted by `_string`, `_string_HEX`, and date/time string types. Its shape follows the `_range_string` typedef.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_range_valid` |
| [Local identifier](_lid.md) | `string` |
| [Global identifier](_gid.md) | `_range_valid_string` |
| [Official identifiers](_aid.md) | `string` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_range_valid",
  "_lid": "string",
  "_gid": "_range_valid_string",
  "_aid": [
    "string"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Valid string range

**[Definition](_definition.md):** The companion property that defines hard lexicographic boundaries for a string scalar value. Values outside the valid range are treated as errors. Accepted by `_string`, `_string_HEX`, and date/time string types. Its shape follows the `_range_string` typedef.

**[Description](_description.md)**

`_range_valid_string` is an optional companion property for string scalar types. When present, the stored string value must fall within the specified lexicographic boundaries; a value outside the valid range is treated as a **validation error**.

The value is a [`_range_string`](_range_string.md) object containing at least one of `_string_min-inclusive`, `_string_min-exclusive`, `_string_max-inclusive`, `_string_max-exclusive`. Comparison is lexicographic (code-point order).

For date and time types, lexicographic order corresponds to chronological order because these formats are designed to sort correctly as strings.

**[Examples](_examples.md)**

A date field restricted to dates from year 2000 onwards:

```json
{
	"_scalar": {
		"_string_date": {
			"_range_valid_string": {
				"_string_min-inclusive": "2000-01-01"
			}
		}
	}
}
```

A string field restricted to uppercase ASCII letters:

```json
{
	"_scalar": {
		"_string": {
			"_range_valid_string": {
				"_string_min-inclusive": "A",
				"_string_max-inclusive": "Z"
			}
		}
	}
}
```

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Valid string range"
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

**Shape:** [Type definition](_typedef.md): `_range_string`

<details>
<summary>JSON</summary>

```json
{
  "_typedef": "_range_string"
}
```

</details>
