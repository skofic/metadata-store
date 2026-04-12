# YYYYMMDD date
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_YMD</code></p>

> The scalar data type for partial or full dates in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `YMD` |
| [Global identifier](_gid.md) | `_string_YMD` |
| [Official identifiers](_aid.md) | `YMD` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "YMD"
  ],
  "_gid" : "_string_YMD",
  "_lid" : "YMD",
  "_nid" : "_string"
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
    "ISO_639_3_eng" : "YYYYMMDD date"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Recommended properties](_recommended.md):** [Valid string range](_range_valid_string.md) · [Normal string range](_range_normal_string.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_range_valid_string",
        "_range_normal_string"
      ]
    }
  }
}
```

</details>
