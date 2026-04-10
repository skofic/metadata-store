# `_timestamp`

**`_title`**

Time stamp

**`_definition`**

The scalar data type for Unix timestamps — integer values representing the number of seconds elapsed since 1970-01-01T00:00:00 UTC. Range constraints may be applied.

**`_description`**

`_timestamp` declares that the value is a Unix timestamp: a signed integer counting seconds since the Unix epoch (1970-01-01T00:00:00 UTC). The companion properties [`_range_valid`](_range_valid.md) and [`_range_normal`](_range_normal.md) may constrain the acceptable time range. Comparable; may appear in sets but not as dictionary keys.

**`_examples`**

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

---

**`_code`**

```json
{
  "_aid" : [
    "timestamp"
  ],
  "_gid" : "_timestamp",
  "_lid" : "timestamp",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_range_valid",
        "_range_normal"
      ]
    }
  }
}
```
