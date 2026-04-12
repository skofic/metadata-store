# `_type_set`

**`_title`**

Set data type

**`_definition`**

The typedef term that defines the set of comparable types accepted as the element type in `_set` and `_nested` data shapes. Excludes non-comparable text types. Recommends `_elements` as a companion property for controlling the number of elements.

**`_description`**

`_type_set` is the reusable type definition used by the [`_set`](_set.md) and [`_nested`](_nested.md) data shapes. Uniqueness in a set requires comparability — the validator must be able to determine whether two values are equal — so only comparable types are included. The non-comparable text types ([`_text`](_text.md), [`_text_HTML`](_text_HTML.md), [`_text_Markdown`](_text_Markdown.md), [`_text_SVG`](_text_SVG.md)) are therefore excluded.

Compared to [`_type_scalar`](_type_scalar.md), `_type_set` omits the entire text family. All other scalar types are accepted:

| Family | Types |
|---|---|
| Number | [`_number`](_number.md), [`_number_float`](_number_float.md), [`_number_integer`](_number_integer.md) |
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md), [`_string_regexp`](_string_regexp.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_timestamp`](_timestamp.md), [`_boolean`](_boolean.md), [`_enum`](_enum.md) |

The [`_elements`](_elements.md) property is recommended to constrain the minimum and maximum number of elements.

---

**`_code`**

```json
{
  "_aid" : [
    "set"
  ],
  "_gid" : "_type_set",
  "_lid" : "set",
  "_nid" : "_type"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_recommended" : [
        "_elements"
      ],
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
