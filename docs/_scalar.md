# `_scalar`

**`_title`**

Scalar

**`_definition`**

The data shape property for a single typed value. Uses the type-as-key convention: its content is an object with exactly one property key that identifies the scalar type, and the value associated with that key is an object of companion properties that further constrain the value. An empty `_scalar` (`{}`) accepts any scalar type without constraint.

**`_description`**

`_scalar` is the data shape for a single value. It uses the **type-as-key** convention: the property key present inside `_scalar` identifies the data type; its value is an object of **companion properties** that apply additional constraints (units, ranges, patterns, etc.). An empty `_scalar` (`{}`) imposes no type constraint.

The validator reads the single key present in `_scalar` to determine the type, then validates the companion properties against that type's schema.

Scalar types are organised into families. Within each family the **parent type** defines the base validation that all family members must pass first; each **leaf type** adds its own specialised check on top. For example, a `_string_URI` value must first satisfy the `_string` check (valid UTF-8 string) before the URI format check is applied.

**Number types** — comparable; usable in sets but not as dictionary keys:

| Type | Accepts |
|---|---|
| [`_number`](_number.md) | Any number (integer or float) |
| [`_number_float`](_number_float.md) | Floating-point; must be stored as float |
| [`_number_integer`](_number_integer.md) | Integer; no decimal part |

Companion properties: [`_unit`](_unit.md), [`_unit_name`](_unit_name.md), [`_unit_symbol`](_unit_symbol.md), [`_range_valid`](_range_valid.md), [`_range_normal`](_range_normal.md). [`_decimals`](_decimals.md) is also accepted by `_number` and `_number_float` but not `_number_integer`.

**String types** — comparable; usable in sets and as dictionary keys:

| Type | Description |
|---|---|
| [`_string`](_string.md) | Generic UTF-8 string |
| [`_string_URI`](_string_URI.md) | Uniform Resource Identifier |
| [`_string_Email`](_string_Email.md) | Email address |
| [`_string_Hostname`](_string_Hostname.md) | Internet hostname |
| [`_string_IPv4`](_string_IPv4.md) | IPv4 address |
| [`_string_IPv6`](_string_IPv6.md) | IPv6 address |
| [`_string_YMD`](_string_YMD.md) | Partial or full date (YYYYMMDD) |
| [`_string_date`](_string_date.md) | Date (YYYY-MM-DD) |
| [`_string_time`](_string_time.md) | Time (HH:MM:SS) |
| [`_string_date-time`](_string_date-time.md) | Date-time (YYYY-MM-DDTHH:MM:SS) |
| [`_string_LaTeX`](_string_LaTeX.md) | LaTeX expression |
| [`_string_HEX`](_string_HEX.md) | Hexadecimal string |
| [`_string_regexp`](_string_regexp.md) | A regular expression (the stored value is itself a pattern) |

`_string` and `_string_HEX` accept companion properties [`_regexp`](_regexp.md), [`_unit`](_unit.md), [`_unit_name`](_unit_name.md), [`_unit_symbol`](_unit_symbol.md), [`_range_valid_string`](_range_valid_string.md), [`_range_normal_string`](_range_normal_string.md). Date and time variants also accept `_range_valid_string` and `_range_normal_string`. All other string variants are self-describing and carry no companion properties.

**Text types** — **non-comparable**; cannot be used in sets or as dictionary keys:

| Type | Description |
|---|---|
| [`_text`](_text.md) | Generic rich text |
| [`_text_HTML`](_text_HTML.md) | HTML |
| [`_text_Markdown`](_text_Markdown.md) | Markdown |
| [`_text_SVG`](_text_SVG.md) | SVG image |

No companion properties. The markup format is declared by the type key itself.

**Term key types** — comparable; usable in sets and as dictionary keys:

| Type | Constraint on the referenced term |
|---|---|
| [`_term_key`](_term_key.md) | Any term |
| [`_term_key_enum-root`](_term_key_enum-root.md) | Enumeration root |
| [`_term_key_enum-item`](_term_key_enum-item.md) | Enumeration element |
| [`_term_key_descriptor`](_term_key_descriptor.md) | Descriptor (has a `_data` section) |

No companion properties — the type key encodes the constraint on the referenced term.

**Other types**:

| Type | Description | Comparable | Companion properties |
|---|---|---|---|
| [`_handle`](_handle.md) | ArangoDB document `_id` (`<collection>/<key>`) | Yes | — |
| [`_timestamp`](_timestamp.md) | Unix timestamp (integer seconds since 1970-01-01 UTC) | Yes | `_range_valid`, `_range_normal` |
| [`_boolean`](_boolean.md) | True/false | Yes | — |
| [`_enum`](_enum.md) | `_gid` of an enumeration element | Yes | [`_enums`](_enums.md) |

**`_examples`**

A floating-point number with unit and valid range:

```json
{
	"_scalar": {
		"_number_float": {
			"_decimals": 2,
			"_unit": "_unit_length_cm",
			"_range_valid": {
				"_min-inclusive": 0.0,
				"_max-exclusive": 300.0
			}
		}
	}
}
```

A plain string constrained by a regular expression:

```json
{
	"_scalar": {
		"_string": {
			"_regexp": "^[A-Z]{2,3}$"
		}
	}
}
```

An enumeration value constrained to the ISO 639-3 language vocabulary:

```json
{
	"_scalar": {
		"_enum": {
			"_enums": ["ISO_639_3"]
		}
	}
}
```

An unconstrained scalar — any type and value accepted:

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
  "_typedef" : "_type_scalar"
}
```
