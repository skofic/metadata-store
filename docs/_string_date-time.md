# Date and time
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_date-time</code></p>

> The scalar data type for combined date-time values in ISO 8601 `YYYY-MM-DDTHH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `date-time` |
| [Global identifier](_gid.md) | `_string_date-time` |
| [Official identifiers](_aid.md) | `date-time` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "date-time"
  ],
  "_gid" : "_string_date-time",
  "_lid" : "date-time",
  "_nid" : "_string"
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
    "ISO_639_3_eng" : "Date and time"
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
