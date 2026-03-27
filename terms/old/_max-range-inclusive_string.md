# `_max-range-inclusive_string`

**`_title`**

String Range Maximum Inclusive

**`_definition`**

The inclusive upper bound of a string range. Only string values less than or equal to this bound (lexicographically) belong to the range.

**`_description`**

[`_max-range-inclusive_string`](_max-range-inclusive_string.md) is a property of [`_range_string`](_range_string.md) objects. It defines the upper bound of the string interval, **including** the bound value itself. It may appear in [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) objects.

At most one of [`_max-range-inclusive_string`](_max-range-inclusive_string.md) and [`_max-range-exclusive_string`](_max-range-exclusive_string.md) may be present in the same range object.

```json
{
	"_valid-range_string": {
		"_min-range-inclusive_string": "1900",
		"_max-range-inclusive_string": "19991231"
	}
}
```

String values after `"19991231"` are out of range.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_max-range-inclusive_string",
  "_lid" : "string",
  "_nid" : "_max-range-inclusive"
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
