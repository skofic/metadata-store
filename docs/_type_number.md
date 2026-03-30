# `_type_number`

**`_title`**

Number

**`_definition`**

The scalar data type for any numeric value, accepting both integers and floating-point numbers. Also the root of the number sub-type enumeration (`_type_number_float`, `_type_number_integer`).

**`_description`**

`_type_number` serves a dual role. As an enumeration element of [`_type_data`](_type_data.md), it declares that a scalar accepts any numeric value — integer or floating-point. As an enumeration root, it is the parent of [`_type_number_float`](_type_number_float.md) and [`_type_number_integer`](_type_number_integer.md), which further constrain the accepted format. When `_type_number` is used as the scalar type, [`_decimals`](_decimals.md) and all range and unit properties are permitted. All number types are members of [`_type_data_comparable`](_type_data_comparable.md).

---

**`_code`**

```json
{
	"_nid": "_type",
	"_lid": "number",
	"_gid": "_type_number",
	"_aid": ["number"]
}
```

**`_domn`**

```json
{
	"_term_type": ["_type_term_enum-root", "_type_term_enum-item"]
}
```
