# `_range_string_max-exclusive`

**`_title`**

String range maximum exclusive

**`_definition`**

The exclusive upper bound of a string range. A value is valid if it is lexicographically strictly less than this bound.

**`_description`**

`_range_string_max-exclusive` defines the open upper bound of a string interval. A value *v* satisfies this bound if *v* < `_range_string_max-exclusive` under lexicographic ordering. Mutually exclusive with [`_range_string_max-inclusive`](_range_string_max-inclusive.md) within the same string range object.

---

**`_code`**

```json
{
	"_nid": "_range_string",
	"_lid": "max-exclusive",
	"_gid": "_range_string_max-exclusive",
	"_aid": ["max-exclusive"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_string"
	}
}
```

**`_domn`**

```json
{}
```
