# `_valid-range_string`

**`_title`**

Valid String Range

**`_definition`**

The hard boundaries of acceptable string values. Any value falling outside this range is considered an error and must be rejected. The range is expressed as an object conforming to the `_range_string` schema, using lexicographic comparison.

**`_description`**

`_valid-range_string` defines the interval of values considered correct for a string descriptor. Values outside this interval are **errors**. Comparison is lexicographic, so the format of the string must be chosen such that lexicographic order corresponds to the intended semantic order.

The value is an object conforming to the [`_range_string`](_range_string.md) schema.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_regexp": "^[A-Z]{2}$",
		"_valid-range_string": {
			"_min-range-inclusive_string": "AA",
			"_max-range-inclusive_string": "ZZ"
		}
	}
}
```

Only two-letter uppercase strings from `AA` to `ZZ` are accepted. For date strings in YYYYMMDD format, use `_valid-range_string` with `_kind_object: ["_range_date"]` to apply date-specific bound properties.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_valid-range_string",
  "_lid" : "string",
  "_nid" : "_valid-range"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_range_string"
    ],
    "_type" : "_type_object"
  }
}
```
