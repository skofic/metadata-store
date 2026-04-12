# `_type_key`

**`_title`**

Key data type

**`_definition`**

The typedef term that defines the set of string-compatible types accepted as the key type in a `_dict_key` object. Excludes number types, boolean, timestamp, text types, and `_string_regexp`, which are not suitable as dictionary keys.

**`_description`**

`_type_key` is the reusable type definition used by the [`_dict_key`](_dict_key.md) data shape. Dictionary keys must be string-compatible and unambiguously comparable, so several types accepted in [`_type_set`](_type_set.md) are excluded: number types (`_number`, `_number_float`, `_number_integer`), [`_boolean`](_boolean.md), [`_timestamp`](_timestamp.md), all text types, and [`_string_regexp`](_string_regexp.md) (using a pattern as a dictionary key would be ambiguous).

Accepted key types:

| Family | Types |
|---|---|
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_enum`](_enum.md) |

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_type_key",
  "_lid" : "key",
  "_nid" : "_type"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {
      "_required" : [
        {
          "_selection" : [
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
            "_term_key",
            "_term_key_enum-root",
            "_term_key_enum-item",
            "_term_key_descriptor",
            "_handle",
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
