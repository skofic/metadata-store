# `_type_string`

**`_title`**

String

**`_definition`**

Scalar data type for a UTF-8 string value. The optional companion property `_kind_string` specifies the encoding or format of the string. When absent, the string is treated as generic text.

**`_description`**

When [`_type`](_type.md) is set to `_type_string`, the descriptor value is a UTF-8 string. The optional companion property [`_kind_string`](_kind_string.md) selects a specific encoding or format — Markdown, HTML, URI, date, email, and so on. When `_kind_string` is absent, the string is generic and the [`_scalar`](_scalar.md) section may additionally carry [`_regexp`](_regexp.md), [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md), and [`_normal-range_string`](_normal-range_string.md). When `_kind_string` is present, the format is self-defining and [`_regexp`](_regexp.md) is not permitted.

**`_examples`**

**Generic string with regexp** — a three-letter uppercase code:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_regexp": "^[A-Z]{3}$"
	}
}
```

Accepts values such as `ITA` or `ENG`. `_regexp` is only permitted when `_kind_string` is absent.



**Markdown** — a Markdown-formatted text value:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_Markdown"
	}
}
```

Example value: `## Title\n\nSome **bold** text.`



**HTML** — an HTML-formatted text value:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_HTML"
	}
}
```

Example value: `<p>Hello <strong>world</strong></p>`



**URI** — a Uniform Resource Identifier:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_URI"
	}
}
```

Example value: `https://www.example.com/resource`



**HEX** — a hexadecimal value:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_HEX"
	}
}
```

Example value: `FF3A6B`



**SVG** — an SVG image encoded as a string:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_SVG"
	}
}
```

Example value: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><circle cx="5" cy="5" r="5"/></svg>`



**Email** — an email address:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_email"
	}
}
```

Example value: `user@example.com`



**Date** — a date in JSON Schema `date` format, with a valid range:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_date",
		"_valid-range_string": {
			"_min-range-inclusive_string": "2000-01-01"
		}
	}
}
```

A date no earlier than 1 January 2000, for example `2024-06-15`.



**Time** — a time in JSON Schema `time` format:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_time"
	}
}
```

Example value: `14:30:00`



**Date-time** — a date and time in JSON Schema `date-time` format:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_date-time"
	}
}
```

Example value: `2024-06-15T14:30:00Z`



**YMD** — a full or partial date in `YYYYMMDD` format:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_ymd"
	}
}
```

Accepts `2024` (year only), `202406` (year and month), or `20240615` (full date).



**Hostname** — an internet hostname:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_Hostname"
	}
}
```

Example value: `www.example.com`



**IPv4** — an IPv4 address:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_IPv4"
	}
}
```

Example value: `192.168.1.1`



**IPv6** — an IPv6 address:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_IPv6"
	}
}
```

Example value: `2001:0db8:85a3::8a2e:0370:7334`



**LaTeX** — a mathematical or scientific expression:

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_LaTeX"
	}
}
```

Example value: `\\bar{x} \\pm \\sigma` (rendered by KaTeX as x̄ ± σ). Simple Unicode symbols such as `°C` or `μg` are also valid.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_type_string",
  "_lid" : "string",
  "_nid" : "_type"
}
```
