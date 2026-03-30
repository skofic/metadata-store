# `_range_min-inclusive`

**`_title`**

Range minimum inclusive

**`_definition`**

The inclusive lower bound of a numeric range. A value is valid if it is greater than or equal to this bound.

**`_description`**

`_range_min-inclusive` defines the closed lower bound of a numeric interval. A value *v* satisfies this bound if *v* ≥ `_range_min-inclusive`. Mutually exclusive with [`_range_min-exclusive`](_range_min-exclusive.md) within the same range object.

---

**`_code`**

```json
{
	"_nid": "_range",
	"_lid": "min-inclusive",
	"_gid": "_range_min-inclusive",
	"_aid": ["min-inclusive"]
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
