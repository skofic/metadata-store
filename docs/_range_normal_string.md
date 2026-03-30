# `_range_normal_string`

**`_title`**

Normal string range

**`_definition`**

The expected string range for a scalar value. Values outside this range are flagged as outliers for review but are not rejected. Conforms to the `_range_string` schema.

**`_description`**

`_range_normal_string` is the string counterpart to [`_range_normal`](_range_normal.md). It defines the expected string interval for a scalar descriptor using lexicographic ordering. Values outside this range are flagged as outliers but are not rejected.

The value is an object conforming to the [`_range_string`](_range_string.md) schema.

---

**`_code`**

```json
{
	"_nid": "_range_normal",
	"_lid": "string",
	"_gid": "_range_normal_string",
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

**`_domn`**

```json
{}
```
