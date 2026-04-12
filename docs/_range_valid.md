# Valid numeric range
<p style="color: #888; margin-top: -0.5em;"><code>_range_valid</code></p>

> The companion property that defines hard numeric boundaries for a scalar value. Values outside the valid range are treated as errors. Accepted by `_number`, `_number_float`, `_number_integer`, and `_timestamp`. Its shape follows the `_range` typedef: an object containing at least one of `_min-inclusive`, `_min-exclusive`, `_max-inclusive`, `_max-exclusive`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Numeric range](_range.md) |
| [Local identifier](_lid.md) | `valid` |
| [Global identifier](_gid.md) | `_range_valid` |
| [Official identifiers](_aid.md) | `valid` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "valid"
  ],
  "_gid" : "_range_valid",
  "_lid" : "valid",
  "_nid" : "_range"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Valid numeric range

**[Definition](_definition.md):** The companion property that defines hard numeric boundaries for a scalar value. Values outside the valid range are treated as errors. Accepted by `_number`, `_number_float`, `_number_integer`, and `_timestamp`. Its shape follows the `_range` typedef: an object containing at least one of `_min-inclusive`, `_min-exclusive`, `_max-inclusive`, `_max-exclusive`.

**[Description](_description.md)**

`_range_valid` is an optional companion property for numeric scalar types. When present, the stored value must fall within the specified boundaries; a value outside the valid range is treated as a **validation error**.

The value is a [`_range`](_range.md) object — it must contain at least one bound: a minimum (`_min-inclusive` or `_min-exclusive`) or a maximum (`_max-inclusive` or `_max-exclusive`), or both. At most one min-bound and one max-bound may be present.

For non-critical out-of-range values that should be flagged as outliers rather than errors, use [`_range_normal`](_range_normal.md) instead.

**[Examples](_examples.md)**

A percentage value that must be between 0 and 100 (inclusive):

```json
{
	"_scalar": {
		"_number_float": {
			"_range_valid": {
				"_min-inclusive": 0.0,
				"_max-inclusive": 100.0
			}
		}
	}
}
```

A count that must be non-negative (lower bound only):

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
    "ISO_639_3_eng" : "Valid numeric range"
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
