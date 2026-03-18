# `_kind_string`

**`_title`**

String Kind

**`_definition`**

Optional qualifier for the `_type_string` data type. When present, this scalar property selects the encoding or format of the string value from a fixed set of named formats such as Markdown, HTML, URI, date, and others. When absent, the string is treated as generic UTF-8 text.

**`_description`**

The `_kind_string` property qualifies the [`_type_string`](_type_string.md) data type by declaring the encoding or format of the string. It is **optional** and accepts exactly one of the following enumeration values:

- [`_kind_string_Markdown`](_kind_string_Markdown.md): The string is formatted as [Markdown](https://www.markdownguide.org/getting-started/).
- [`_kind_string_HTML`](_kind_string_HTML.md): The string is formatted as [HTML](https://en.wikipedia.org/wiki/HTML).
- [`_kind_string_URI`](_kind_string_URI.md): The string is a [Uniform Resource Identifier](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier).
- [`_kind_string_HEX`](_kind_string_HEX.md): The string is a [hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal) value.
- [`_kind_string_SVG`](_kind_string_SVG.md): The string is an [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) image.
- [`_kind_string_email`](_kind_string_email.md): The string is an [email address](https://en.wikipedia.org/wiki/Email_address).
- [`_kind_string_date`](_kind_string_date.md): The string is a date in JSON Schema `date` format.
- [`_kind_string_time`](_kind_string_time.md): The string is a time in JSON Schema `time` format.
- [`_kind_string_date-time`](_kind_string_date-time.md): The string is a date-time in JSON Schema `date-time` format.
- [`_kind_string_ymd`](_kind_string_ymd.md): The string is a full or partial date in `YYYYMMDD` format (`YYYY`, `YYYYMM`, or `YYYYMMDD`).
- [`_kind_string_Hostname`](_kind_string_Hostname.md): The string is an [internet hostname](https://en.wikipedia.org/wiki/Hostname).
- [`_kind_string_IPv4`](_kind_string_IPv4.md): The string is an [IPv4 address](https://en.wikipedia.org/wiki/IPv4).
- [`_kind_string_IPv6`](_kind_string_IPv6.md): The string is an [IPv6 address](https://en.wikipedia.org/wiki/IPv6).
- [`_kind_string_LaTeX`](_kind_string_LaTeX.md): The string is a [LaTeX](https://www.latex-project.org) expression, rendered by [KaTeX](https://katex.org). LaTeX is a superset of plain UTF-8, so simple symbols may be stored as plain Unicode.

When `_kind_string` is absent, the string is generic and the [`_scalar`](_scalar.md) section may additionally include [`_regexp`](_regexp.md), [`_unit`](_unit.md), [`_unit-name`](_unit-name.md), [`_unit-symbol`](_unit-symbol.md), [`_valid-range_string`](_valid-range_string.md), and [`_normal-range_string`](_normal-range_string.md). When `_kind_string` is present, the format is self-defining and [`_regexp`](_regexp.md) is not permitted.

---

**`_code`**

```json
{
  "_aid" : [
    "string"
  ],
  "_gid" : "_kind_string",
  "_lid" : "string",
  "_nid" : "_kind"
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_kind_enum" : [
      "_kind_string"
    ],
    "_type" : "_type_enum"
  }
}
```
