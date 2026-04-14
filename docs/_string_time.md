# Time
<p style="color: #888; margin-top: -0.5em;"><code>_string_time</code></p>

> The scalar data type for times in `HH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `time` |
| [Global identifier](_gid.md) | `_string_time` |
| [Official identifiers](_aid.md) | `time` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "time",
  "_gid": "_string_time",
  "_aid": [
    "time"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Time

**[Definition](_definition.md):** The scalar data type for times in `HH:MM:SS` format. Comparable; string range constraints may be applied. A sub-type of `_string`.

**[Description](_description.md)**

`_string_time` stores a time-of-day value in `HH:MM:SS` format. Lexicographic ordering is meaningful. String range constraints may be applied via [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_time": {}
	}
}
```

Stored values: `"14:30:00"`, `"09:00:00"`, `"23:59:59"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Time"
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
