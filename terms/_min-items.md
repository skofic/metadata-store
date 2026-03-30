# `_min-items`

**`_title`**

Minimum element count

**`_definition`**

The minimum number of elements a collection must contain. The bound is inclusive. A non-negative integer.

**`_description`**

`_min-items` sets the inclusive lower bound on the number of elements in an [`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), or [`_tuple`](_tuple.md). A collection is valid only if its element count is greater than or equal to this value.

When `_min-items` is absent, the collection may be empty (an element count of zero is permitted). The value must be a non-negative integer.

---

**`_code`**

```json
{
	"_nid": "",
	"_lid": "min-items",
	"_gid": "_min-items",
	"_aid": ["min-items"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_number_integer",
		"_range_valid": {
			"_range_min-inclusive": 0
		}
	}
}
```

**`_domn`**

```json
{}
```
