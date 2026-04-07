# `_range_valid_string`

**`_title`**

Valid string range

**`_definition`**

The hard-boundary string range for a scalar value. Any value outside this range is an error and must be rejected. Conforms to the `_range_string` schema.

**`_description`**

`_range_valid_string` is the string counterpart to [`_range_valid`](_range_valid.md). It defines the acceptable string interval for a scalar descriptor using lexicographic ordering. Values outside this range are **errors**.

The value is an object conforming to the [`_range_string`](_range_string.md) schema. Used with `_type_string` and its format-specific sub-types where ordering is meaningful (date strings, timestamp strings, hexadecimal strings).

**`_examples`**

A date string must be in the 21st century:

```json
{
	"_scalar": {
		"_scalar_type": "_type_string_date",
		"_range_valid_string": {"_range_string_min-inclusive": "2000-01-01"}
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_range_valid_string",
  "_lid" : "string",
  "_nid" : "_range_valid"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_object_types" : [
      "_range_string"
    ],
    "_scalar_type" : "_type_object"
  }
}
```
