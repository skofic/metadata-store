# YYYYMMDD date
<p style="color: #888; margin-top: -0.5em;"><code>_string_YMD</code></p>

> The scalar data type for partial or full dates in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `YMD` |
| [Global identifier](_gid.md) | `_string_YMD` |
| [Official identifiers](_aid.md) | `YMD` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "YMD",
  "_gid": "_string_YMD",
  "_aid": [
    "YMD"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** YYYYMMDD date

**[Definition](_definition.md):** The scalar data type for partial or full dates in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). Comparable; string range constraints may be applied. A sub-type of `_string`.

**[Description](_description.md)**

`_string_YMD` stores dates without separators, allowing partial dates (year only or year-month) unlike [`_string_date`](_string_date.md). Lexicographic ordering is meaningful and [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md) may be applied. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

A YMD date field accepting any date from year 2000 onwards:

```json
{
	"_scalar": {
		"_string_YMD": {
			"_range_valid_string": {
				"_string_min-inclusive": "2000"
			}
		}
	}
}
```

Stored values: `"2024"` (year only), `"202403"` (year-month), `"20240315"` (full date).

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "YYYYMMDD date"
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
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```

</details>
