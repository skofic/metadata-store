# `_type_string_YMD`

**`_title`**

Year, month or day

**`_definition`**

The scalar data type for partial or full dates in YYYYMMDD format: `YYYY` (year only), `YYYYMM` (year and month), or `YYYYMMDD` (full date). Comparable; string range constraints apply.

**`_description`**

`_type_string_YMD` stores dates without separators. Unlike [`_type_string_date`](_type_string_date.md), it allows partial dates (year only or year-month). Lexicographic ordering is meaningful and string range constraints may be applied. A member of [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md).

---

**`_code`**

```json
{
	"_nid": "_type_string",
	"_lid": "YMD",
	"_gid": "_type_string_YMD",
	"_aid": ["YMD"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-item"]
}
```
