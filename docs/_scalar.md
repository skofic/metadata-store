# `_scalar`

**`_title`**

Scalar

**`_definition`**

The shape property for a single, indivisible value. When the object is empty, the descriptor accepts any scalar value without type constraints. When non-empty, the required `_scalar_type` property determines the data type and governs which additional properties are permitted.

**`_description`**

A *scalar* is a single, indivisible datum — a number, a boolean, a string, or a reference to another term. It contrasts with the compound shapes ([`_array`](_array.md), [`_nested`](_nested.md), [`_set`](_set.md), [`_tuple`](_tuple.md), [`_dict`](_dict.md)), which hold multiple values.

When [`_scalar`](_scalar.md) is an *empty object* (`{}`), the descriptor accepts any scalar value of any type, with no further constraints.

When non-empty, [`_scalar_type`](_scalar_type.md) is required and governs the entire property configuration. Each type value activates a conditional rule that defines exactly which additional properties are permitted. [`_unit`](_unit.md) and the free-text pair [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md) are mutually exclusive — use the codified unit when available, fall back to the free-text pair otherwise.

- [**Boolean**](_type_boolean.md): True/false boolean value.
- [**Number**](_type_number.md): A number accepting both integer and floating-point values. Companion properties: [`_decimals`](_decimals.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_range_valid`](_range_valid.md) / [`_range_normal`](_range_normal.md).
  - [**Float**](_type_number_float.md): A floating-point number. Companion properties: [`_decimals`](_decimals.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_range_valid`](_range_valid.md) / [`_range_normal`](_range_normal.md).
  - [**Integer**](_type_number_integer.md): An integer with no decimal part. Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_range_valid`](_range_valid.md) / [`_range_normal`](_range_normal.md).
- [**String**](_type_string.md): A generic UTF-8 string. Companion properties: [`_regexp`](_regexp.md); [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_range_valid_string`](_range_valid_string.md) / [`_range_normal_string`](_range_normal_string.md).
  - [**Formatted text**](_type_string_formatted.md) *(section — not a valid `_scalar_type` value)*: Groups display and markup string types; excluded from `_comparable_type` and `_dict_key_type`.
    - [**HTML**](_type_string_HTML.md): HTML-formatted text.
    - [**Markdown**](_type_string_Markdown.md): Markdown-formatted text.
    - [**LaTeX**](_type_string_LaTeX.md): LaTeX expression; rendered with KaTeX.
    - [**SVG**](_type_string_SVG.md): SVG image data.
  - [**Internet**](_type_string_internet.md) *(section — not a valid `_scalar_type` value)*: Groups internet address and identifier string types.
    - [**URI**](_type_string_URI.md): Uniform Resource Identifier.
    - [**Email**](_type_string_Email.md): Email address.
    - [**Hostname**](_type_string_Hostname.md): Internet hostname.
    - [**IPv4**](_type_string_IPv4.md): IPv4 address.
    - [**IPv6**](_type_string_IPv6.md): IPv6 address.
  - [**Timestamp string**](_type_string_timestamp.md) *(section — not a valid `_scalar_type` value)*: Groups date and time string types. Companion properties: [`_range_valid_string`](_range_valid_string.md) / [`_range_normal_string`](_range_normal_string.md).
    - [**YMD date**](_type_string_YMD.md): Partial or full date in YYYYMMDD format (YYYY, YYYYMM, or YYYYMMDD).
    - [**Date**](_type_string_date.md): Date (`YYYY-MM-DD`).
    - [**Time**](_type_string_time.md): Time (`HH:MM:SS`).
    - [**Date-time**](_type_string_date-time.md): Date-time (`YYYY-MM-DDTHH:MM:SS`).
  - [**Encoded**](_type_string_encoded.md) *(section — not a valid `_scalar_type` value)*: Groups encoded string types.
    - [**HEX**](_type_string_HEX.md): Hexadecimal string. Companion properties: [`_unit`](_unit.md) / [`_unit-name`](_unit-name.md) / [`_unit-symbol`](_unit-symbol.md); [`_range_valid_string`](_range_valid_string.md) / [`_range_normal_string`](_range_normal_string.md).
- [**Regular expression**](_type_regexp.md): A regular expression; the stored value is itself a pattern.
- [**Document key**](_type_key.md): `_key` of any ArangoDB document.
  - [**Term key**](_type_key_term.md): `_key` of any term.
  - [**Enumeration root key**](_type_key_term_enum-root.md): `_key` of an enumeration root.
  - [**Enumeration item key**](_type_key_term_enum-item.md): `_key` of an enumeration element.
  - [**Descriptor key**](_type_key_term_descriptor.md): `_key` of a descriptor term.
  - [**Object definition key**](_type_key_term_object.md): `_key` of an object definition term.
  - [**Predicate key**](_type_key_term_predicate.md): `_key` of a predicate term.
  - [**Typedef key**](_type_key_term_typedef.md): `_key` of a typedef term.
- [**Document handle**](_type_handle.md): ArangoDB document handle (`<collection>/<_key>`).
- [**Enumeration element**](_type_enum.md): [`_gid`](_gid.md) of an enumeration element. Companion properties: [`_enum_types`](_enum_types.md).
- [**Object**](_type_object.md): Object whose properties are descriptor `_gid`s. Companion properties: [`_object_types`](_object_types.md).
- [**Struct**](_type_struct.md): Object with indeterminate properties.
- [**Timestamp**](_type_timestamp.md): Unix timestamp (integer seconds since 1970-01-01 UTC). Companion properties: [`_range_valid`](_range_valid.md) / [`_range_normal`](_range_normal.md).
- [**GeoJSON**](_type_object_GeoJSON.md): GeoJSON object (may not be empty).

**`_examples`**

A boolean value:

```json
{
	"_scalar": {
		"_scalar_type": "_type_boolean"
	}
}
```

A floating-point length in centimetres with a valid range:

```json
{
	"_scalar": {
		"_scalar_type": "_type_number_float",
		"_unit": "_unit_length_cm",
		"_decimals": 2,
		"_range_valid": {
			"_range_min-inclusive": 0.0,
			"_range_max-exclusive": 100.0
		}
	}
}
```

An enumeration value drawn from the ISO 639-3 language vocabulary:

```json
{
	"_scalar": {
		"_scalar_type": "_type_enum",
		"_enum_types": ["ISO_639_3"]
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
	"_nid": "",
	"_lid": "scalar",
	"_gid": "_scalar",
	"_aid": ["scalar"]
}
```

**`_data`**

```json
{
	"_scalar": {
		"_scalar_type": "_type_object",
		"_object_types": ["_scalar"]
	}
}
```

**`_rule`**

```json
{
	"_closed": true,
	"_recommended": ["_scalar_type"]
}
```

**`_domn`**

```json
{}
```
