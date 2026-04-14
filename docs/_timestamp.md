# Time stamp
<p style="color: #888; margin-top: -0.5em;"><code>_timestamp</code></p>

> The scalar data type for Unix timestamps — integer values representing the number of seconds elapsed since 1970-01-01T00:00:00 UTC. Range constraints may be applied.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `timestamp` |
| [Global identifier](_gid.md) | `_timestamp` |
| [Official identifiers](_aid.md) | `timestamp` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "timestamp",
  "_gid": "_timestamp",
  "_aid": [
    "timestamp"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Time stamp

**[Definition](_definition.md):** The scalar data type for Unix timestamps — integer values representing the number of seconds elapsed since 1970-01-01T00:00:00 UTC. Range constraints may be applied.

**[Description](_description.md)**

`_timestamp` declares that the value is a Unix timestamp: a signed integer counting seconds since the Unix epoch (1970-01-01T00:00:00 UTC). The companion properties [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md) may constrain the acceptable time range. Comparable; may appear in sets but not as dictionary keys.

**[Examples](_examples.md)**

A timestamp accepting only dates from year 2000 onwards (Unix time 946684800):

```json
{
	"_scalar": {
		"_timestamp": {
			"_range_valid": {
				"_min-inclusive": 946684800
			}
		}
	}
}
```

Stored values: `946684800` (2000-01-01T00:00:00Z), `1704067200` (2024-01-01T00:00:00Z).

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Time stamp"
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
        "_range_valid",
        "_range_normal"
      ]
    }
  }
}
```

</details>
