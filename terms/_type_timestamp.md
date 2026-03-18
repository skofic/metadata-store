# `_type_timestamp`

**`_title`**

Timestamp

**`_definition`**

Scalar data type for an integer representing a Unix timestamp — the number of seconds elapsed since 1 January 1970 UTC.

**`_description`**

When [`_type`](_type.md) is set to `_type_timestamp`, the descriptor value is an integer counting the seconds elapsed since the Unix epoch (1 January 1970, 00:00:00 UTC). Negative values represent dates before the epoch. The [`_scalar`](_scalar.md) section may additionally carry [`_valid-range`](_valid-range.md) and [`_normal-range`](_normal-range.md) to constrain or flag the accepted time interval.

**`_examples`**

**Simple timestamp** — a recording date with no constraint:

```json
{
	"_scalar": {
		"_type": "_type_timestamp"
	}
}
```

Any integer is accepted. For example, `1719705600` represents 30 June 2024 00:00:00 UTC.



**Timestamp with valid range** — a date that must not be before the Unix epoch:

```json
{
	"_scalar": {
		"_type": "_type_timestamp",
		"_valid-range": {
			"_min-range-inclusive": 0
		}
	}
}
```

Negative values (dates before 1 January 1970) are rejected. Useful for descriptors that record events in the modern computing era.

---

**`_code`**

```json
{
  "_aid" : [
    "timestamp"
  ],
  "_gid" : "_type_timestamp",
  "_lid" : "timestamp",
  "_nid" : "_type"
}
```
