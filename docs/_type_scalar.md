# Scalar data type
<p><a href="_term_role_typedef.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Type definition</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_type_scalar</code></p>

> The typedef term that defines the complete set of types accepted as the type key in a `_scalar` object. Its schema requires exactly one of the listed type keys to be present. Referenced via `_typedef: "_type_scalar"` by the `_scalar` shape property.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Type](_type.md) |
| [Local identifier](_lid.md) | `scalar` |
| [Global identifier](_gid.md) | `_type_scalar` |
| [Official identifiers](_aid.md) | `scalar` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "scalar"
  ],
  "_gid" : "_type_scalar",
  "_lid" : "scalar",
  "_nid" : "_type"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Scalar data type

**[Definition](_definition.md):** The typedef term that defines the complete set of types accepted as the type key in a `_scalar` object. Its schema requires exactly one of the listed type keys to be present. Referenced via `_typedef: "_type_scalar"` by the `_scalar` shape property.

**[Description](_description.md)**

`_type_scalar` is the reusable type definition used by the [`_scalar`](_scalar.md) data shape. When a descriptor uses `_scalar`, the validator delegates type-key validation to this typedef: it checks that exactly one of the listed type keys is present in the `_scalar` object.

The full set of accepted type keys spans all scalar type families:

| Family | Types |
|---|---|
| Number | [`_number`](_number.md), [`_number_float`](_number_float.md), [`_number_integer`](_number_integer.md) |
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md), [`_string_regexp`](_string_regexp.md) |
| Text | [`_text`](_text.md), [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), [`_text_SVG`](_text_SVG.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_timestamp`](_timestamp.md), [`_boolean`](_boolean.md), [`_enum`](_enum.md) |

<details>
<summary>JSON</summary>

```json
{
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Scalar data type"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md) ([Minimum element count](_min-items.md): 1; [Maximum element count](_max-items.md): 1)
[Number](_number.md) · [Floating point number](_number_float.md) · [Integer number](_number_integer.md) · [String](_string.md) · [Uniform Resource Identifier](_string_URI.md) · [Email address](_string_Email.md) · [Hostname](_string_Hostname.md) · [Internet Protocol version 4 address](_string_IPv4.md) · [Internet Protocol version 6 address](_string_IPv6.md) · [YYYYMMDD date](_string_YMD.md) · [Date](_string_date.md) · [Time](_string_time.md) · [Date and time](_string_date-time.md) · [LaTeX string](_string_LaTeX.md) · [Hexadecimal string](_string_HEX.md) · [Regular expression string](_string_regexp.md) · [Text](_text.md) · [HTML](_text_HTML.md) · [Markdown](_text_Markdown.md) · [SVG](_text_SVG.md) · [Term document key](_term_key.md) · [Enumeration root term document key](_term_key_enum-root.md) · [Enumeration element term document key](_term_key_enum-item.md) · [Descriptor term document key](_term_key_descriptor.md) · [Document handle](_handle.md) · [Time stamp](_timestamp.md) · [Boolean](_boolean.md) · [Enumerated value](_enum.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
            "_number",
            "_number_float",
            "_number_integer",
            "_string",
            "_string_URI",
            "_string_Email",
            "_string_Hostname",
            "_string_IPv4",
            "_string_IPv6",
            "_string_YMD",
            "_string_date",
            "_string_time",
            "_string_date-time",
            "_string_LaTeX",
            "_string_HEX",
            "_string_regexp",
            "_text",
            "_text_HTML",
            "_text_Markdown",
            "_text_SVG",
            "_term_key",
            "_term_key_enum-root",
            "_term_key_enum-item",
            "_term_key_descriptor",
            "_handle",
            "_timestamp",
            "_boolean",
            "_enum"
          ],
          "_selectors" : [
            {
              "_all" : {
                "_max-items" : 1,
                "_min-items" : 1
              }
            }
          ]
        }
      ]
    }
  }
}
```

</details>
