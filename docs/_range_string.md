# `_range_string`

**`_title`**

String range

**`_definition`**

A string range object defining the bounds of a string interval. At least one bound must be present; at most one lower-bound and one upper-bound property may be present. Used as the schema for `_range_valid_string` and `_range_normal_string`.

**`_description`**

`_range_string` is the string counterpart to [`_range`](_range.md). It defines an interval over string values using lexicographic ordering. Like `_range`, it contains up to four bound properties — two for the lower end and two for the upper end — with at most one from each pair. At least one bound overall must be present — an empty `_range_string` object is invalid.

This schema is referenced by [`_range_valid_string`](_range_valid_string.md) and [`_range_normal_string`](_range_normal_string.md). String ranges are used with `_type_string` and its sub-types where ordering is meaningful (timestamp strings, date strings, hexadecimal strings).

**`_examples`**

A string range covering dates from 2000-01-01 onwards:

```json
{
	"_range_string_min-inclusive": "2000-01-01"
}
```

A hexadecimal range:

```json
{
	"_range_string_min-inclusive": "00",
	"_range_string_max-exclusive": "FF"
}
```

---

**`_code`**

```json
{
	"_nid": "_range",
	"_lid": "string",
	"_gid": "_range_string",
	"_aid": ["string"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_range_string"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_required": [
		{
			"_selection_rules": [
				{
					"_selection_type": "_type_selection_mandatory",
					"_elements": {
						"_min-items": 1,
						"_max-items": 1
					}
				},
				{
					"_selection_type": "_type_selection_optional",
					"_elements": {
						"_min-items": 1
					}
				}
			],
			"_selection_descriptors": [
				["_range_string_min-inclusive", "_range_string_min-exclusive"],
				["_range_string_max-inclusive", "_range_string_max-exclusive"]
			]
		}
	]
}
```

**`_domn`**

```json
{}
```
