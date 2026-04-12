# Date
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_date</code></p>

> The scalar data type for full dates in ISO 8601 `YYYY-MM-DD` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `date` |
| [Global identifier](_gid.md) | `_string_date` |
| [Official identifiers](_aid.md) | `date` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "date"
  ],
  "_gid" : "_string_date",
  "_lid" : "date",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Date

**[Definition](_definition.md):** The scalar data type for full dates in ISO 8601 `YYYY-MM-DD` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

**[Description](_description.md)**

`_string_date` stores a full calendar date with hyphen separators. Lexicographic ordering is meaningful. String range constraints may be applied via [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

A date with a lower bound:

```json
{
	"_scalar": {
		"_string_date": {
			"_range_valid_string": {
				"_string_min-inclusive": "1900-01-01"
			}
		}
	}
}
```

Stored values: `"2024-03-15"`, `"1970-01-01"`, `"2000-12-31"`.

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
    "ISO_639_3_eng" : "Date"
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
