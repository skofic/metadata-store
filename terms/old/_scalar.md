# `_scalar`

**`_title`**

Scalar

**`_definition`**

The shape property for a single, indivisible value. When the object is empty, the descriptor accepts any scalar value without type constraints. When non-empty, the required [`_type_scalar`](_type_scalar.md) property determines the data type and governs which additional properties are permitted.

**`_description`**

A *scalar* is a single, indivisible datum — a number, a boolean, a string, or a reference to another term. It contrasts with the compound shapes ([`_array`](_array.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_dict`](_dict.md)), which hold multiple values.

When [`_scalar`](_scalar.md) is an *empty object* (`{}`), the descriptor accepts any scalar value of any type, with no further constraints.

When non-empty, [`_type_scalar`](_type_scalar.md) is required and governs the entire property configuration. Each type value activates a conditional rule that defines exactly which additional properties are permitted. [`_unit`](_unit.md) and the free-text pair [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md) are mutually exclusive — use the codified unit when available, fall back to the free-text pair otherwise.

| [`_type_scalar`](_type_scalar.md) | Description | Companion properties |
|---|---|---|
| [`_type_boolean`](_type_boolean.md) | True/false boolean value. | — |
| [`_type_number`](_type_number.md) | Number; accepts both integers and floating-point values. | [`_decimals`](_decimals.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md) |
| [`_type_number_float`](_type_number_float.md) | Floating-point number. | [`_decimals`](_decimals.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md) |
| [`_type_number_integer`](_type_number_integer.md) | Integer — no decimal part. | [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md) |
| [`_type_string`](_type_string.md) | Generic UTF-8 string. | [`_regexp`](_regexp.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_Markdown`](_type_string_Markdown.md) | Markdown-formatted text. | — |
| [`_type_string_HTML`](_type_string_HTML.md) | HTML-formatted text. | — |
| [`_type_string_URI`](_type_string_URI.md) | Uniform Resource Identifier. | — |
| [`_type_string_HEX`](_type_string_HEX.md) | Hexadecimal string. | [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_SVG`](_type_string_SVG.md) | SVG image data. | — |
| [`_type_string_email`](_type_string_email.md) | Email address. | — |
| [`_type_string_date`](_type_string_date.md) | Date in JSON Schema `date` format (`YYYY-MM-DD`). | [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_time`](_type_string_time.md) | Time in JSON Schema `time` format. | [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_date-time`](_type_string_date-time.md) | Date-time in JSON Schema `date-time` format. | [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_YMD`](_type_string_YMD.md) | Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD). | [`_valid-range_string`](_valid-range_string.md) / [`_normal-range_string`](_normal-range_string.md) |
| [`_type_string_Hostname`](_type_string_Hostname.md) | Internet hostname. | — |
| [`_type_string_IPv4`](_type_string_IPv4.md) | IPv4 address. | — |
| [`_type_string_IPv6`](_type_string_IPv6.md) | IPv6 address. | — |
| [`_type_string_LaTeX`](_type_string_LaTeX.md) | LaTeX expression; rendered with KaTeX. | — |
| [`_type_string_regexp`](_type_string_regexp.md) | Regular expression; the stored value is itself a pattern. | — |
| [`_type_key`](_type_key.md) | `_key` of any ArangoDB document. | — |
| [`_type_key_term`](_type_key_term.md) | `_key` of any term. | — |
| [`_type_key_term_enum`](_type_key_term_enum.md) | `_key` of an enumeration root — the root of a controlled vocabulary. | — |
| [`_type_key_term_enum_element`](_type_key_term_enum_element.md) | `_key` of an enumeration element — a valid choice within a controlled vocabulary. | — |
| [`_type_key_term_descriptor`](_type_key_term_descriptor.md) | `_key` of a descriptor (has a [`_data`](_data.md) section). | — |
| [`_type_key_term_object`](_type_key_term_object.md) | `_key` of an object definition term (has a [`_rule`](_rule.md) section). | — |
| [`_type_key_term_predicate`](_type_key_term_predicate.md) | `_key` of a predicate term. | — |
| [`_type_handle`](_type_handle.md) | ArangoDB document handle (`<collection>/<_key>`). | — |
| [`_type_enum`](_type_enum.md) | `_gid` of an enumeration element — a value drawn from a controlled vocabulary. | [`_kind_enum`](_kind_enum.md) |
| [`_type_object`](_type_object.md) | Object whose properties are descriptor `_gid`s; may be empty. | [`_kind_object`](_kind_object.md) |
| [`_type_struct`](_type_struct.md) | Object with indeterminate properties; may be empty. | — |
| [`_type_timestamp`](_type_timestamp.md) | Unix timestamp (integer seconds since 1970-01-01 UTC). | [`_valid-range`](_valid-range.md) / [`_normal-range`](_normal-range.md) |
| [`_type_object_GeoJSON`](_type_object_GeoJSON.md) | GeoJSON object; may not be empty. | — |


**`_examples`**

A boolean value:

```json
{
	"_scalar": {
		"_type_scalar": "_type_boolean"
	}
}
```



A floating-point length in centimetres with a valid range:

```json
{
	"_scalar": {
		"_type_scalar": "_type_number_float",
		"_unit": "_unit_length_cm",
		"_decimals": 2,
		"_valid-range": {
			"_min-range-inclusive": 0.0,
			"_max-range-exclusive": 100.0
		}
	}
}
```



An enumeration value drawn from the ISO 639-3 language vocabulary:

```json
{
	"_scalar": {
		"_type_scalar": "_type_enum",
		"_kind_enum": ["ISO_639_3"]
	}
}
```



A generic UTF-8 string validated by a regular expression:

```json
{
	"_scalar": {
		"_type_scalar": "_type_string",
		"_regexp": "^[A-Z]{2,3}$"
	}
}
```



An unconstrained scalar (any type accepted):

```json
{
	"_scalar": {}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "scalar"
  ],
  "_gid" : "_scalar",
  "_lid" : "scalar",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_object" : [
      "_scalar"
    ],
    "_type_scalar" : "_type_object"
  }
}
```

**`_rule`**

```json
{
  "_closed" : true,
  "_recommended" : [
    "_type_scalar"
  ]
}
```
