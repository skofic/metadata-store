# `_range_max-inclusive`

**`_title`**

Range maximum inclusive

**`_definition`**

The inclusive upper bound of a numeric range. A value is valid if it is less than or equal to this bound.

**`_description`**

`_range_max-inclusive` defines the closed upper bound of a numeric interval. A value *v* satisfies this bound if *v* ≤ `_range_max-inclusive`. Mutually exclusive with [`_range_max-exclusive`](_range_max-exclusive.md) within the same range object.

---

**`_code`**

```json
{
	"_nid": "_range",
	"_lid": "max-inclusive",
	"_gid": "_range_max-inclusive",
	"_aid": ["max-inclusive"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_number"
	}
}
```

**`_domn`**

```json
{}
```
