# `_min-range-exclusive_string`

**`_title`**

String Range Minimum Exclusive

**`_definition`**

The exclusive lower bound of a string range. Only string values strictly greater than this bound (lexicographically) belong to the range — the bound value itself is excluded.

**`_description`**

`_min-range-exclusive_string` is a property of [`_range_string`](_range_string.md) objects. It defines the lower bound of the string interval, **excluding** the bound value itself. It may appear in [`_valid-range_string`](_valid-range_string.md) and [`_normal-range_string`](_normal-range_string.md) objects.

At most one of `_min-range-exclusive_string` and [`_min-range-inclusive_string`](_min-range-inclusive_string.md) may be present in the same range object.

```json
{
	"_valid-range_string": {
		"_min-range-exclusive_string": "19491231"
	}
}
```

Strings that sort as `"19491231"` or earlier are out of range; `"1950"` and later are accepted.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_min-range-exclusive_string",
  "_lid" : "string",
  "_nid" : "_min-range-exclusive"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_type" : "_type_string"
  }
}
```
