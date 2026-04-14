# Date
<p style="color: #888; margin-top: -0.5em;"><code>_string_date</code></p>

> The scalar data type for full dates in ISO 8601 `YYYY-MM-DD` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `date` |
| [Global identifier](_gid.md) | `_string_date` |
| [Official identifiers](_aid.md) | `date` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "date",
  "_gid": "_string_date",
  "_aid": [
    "date"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Date"
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
