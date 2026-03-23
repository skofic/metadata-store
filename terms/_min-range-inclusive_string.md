# `_min-range-inclusive_string`

**`_title`**

String Range Minimum Inclusive

**`_definition`**

The inclusive lower bound of a string range. Only string values greater than or equal to this bound (lexicographically) belong to the range.

**`_description`**

[`_min-range-inclusive_string`](_min-range-inclusive_string.md) is a property of [`_range_string`](_range_string.md) objects. It defines the lower bound of the string interval, **including** the bound value itself. Comparison is lexicographic. It may appear in [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) objects.

At most one of [`_min-range-inclusive_string`](_min-range-inclusive_string.md) and [`_min-range-exclusive_string`](_min-range-exclusive_string.md) may be present in the same range object.

```json
{
	"_valid-range_string": {
		"_min-range-inclusive_string": "1900"
	}
}
```

String values that sort before `"1900"` are out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_min-range-inclusive_string",
  "_lid" : "string",
  "_nid" : "_min-range-inclusive"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type_scalar" : "_type_string"
  }
}
```
