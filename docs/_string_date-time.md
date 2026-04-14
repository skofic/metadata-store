# Date and time
<p style="color: #888; margin-top: -0.5em;"><code>_string_date-time</code></p>

> The scalar data type for combined date-time values in ISO 8601 `YYYY-MM-DDTHH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `date-time` |
| [Global identifier](_gid.md) | `_string_date-time` |
| [Official identifiers](_aid.md) | `date-time` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "date-time",
  "_gid": "_string_date-time",
  "_aid": [
    "date-time"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Date and time

**[Definition](_definition.md):** The scalar data type for combined date-time values in ISO 8601 `YYYY-MM-DDTHH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

**[Description](_description.md)**

`_string_date-time` stores a combined date and time value with the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) `T` separator. Lexicographic ordering is meaningful. String range constraints may be applied via [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_date-time": {}
	}
}
```

Stored values: `"2024-03-15T14:30:00"`, `"2000-01-01T00:00:00"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Date and time"
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
