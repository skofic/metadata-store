# `_max-range-exclusive_string`

**`_title`**

String Range Maximum Exclusive

**`_definition`**

The exclusive upper bound of a string range. Only string values strictly less than this bound (lexicographically) belong to the range — the bound value itself is excluded.

**`_description`**

[`_max-range-exclusive_string`](_max-range-exclusive_string.md) is a property of [`_range_string`](_range_string.md) objects. It defines the upper bound of the string interval, **excluding** the bound value itself. It may appear in [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) objects.

At most one of [`_max-range-exclusive_string`](_max-range-exclusive_string.md) and [`_max-range-inclusive_string`](_max-range-inclusive_string.md) may be present in the same range object.

```json
{
	"_valid-range_string": {
		"_min-range-inclusive_string": "1900",
		"_max-range-exclusive_string": "2000"
	}
}
```

Strings from `"2000"` onward are out of range; `"19991231"` is accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_max-range-exclusive_string",
  "_lid" : "string",
  "_nid" : "_max-range-exclusive"
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
