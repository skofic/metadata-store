# `_range_max-exclusive`

**`_title`**

Range maximum exclusive

**`_definition`**

The exclusive upper bound of a numeric range. A value is valid if it is strictly less than this bound.

**`_description`**

`_range_max-exclusive` defines the open upper bound of a numeric interval. A value *v* satisfies this bound if *v* < `_range_max-exclusive`. Mutually exclusive with [`_range_max-inclusive`](_range_max-inclusive.md) within the same range object.

---

**`_code`**

```json
{
	"_nid": "_range",
	"_lid": "max-exclusive",
	"_gid": "_range_max-exclusive",
	"_aid": ["max-exclusive"]
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
