# Key data type
<p><a href="_term_role_typedef.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Type definition</a> <a href="_term_role_enum-root.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration root</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_type_key</code></p>

> The typedef term that defines the set of string-compatible types accepted as the key type in a `_dict_key` object. Excludes number types, boolean, timestamp, text types, and `_string_regexp`, which are not suitable as dictionary keys.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Type](_type.md) |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_type_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

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

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Key data type

**[Definition](_definition.md):** The typedef term that defines the set of string-compatible types accepted as the key type in a `_dict_key` object. Excludes number types, boolean, timestamp, text types, and `_string_regexp`, which are not suitable as dictionary keys.

**[Description](_description.md)**

`_type_key` is the reusable type definition used by the [`_dict_key`](_dict_key.md) data shape. Dictionary keys must be string-compatible and unambiguously comparable, so several types accepted in [`_type_comparable`](_type_comparable.md) are excluded: number types (`_number`, `_number_float`, `_number_integer`), [`_boolean`](_boolean.md), [`_timestamp`](_timestamp.md), all text types, and [`_string_regexp`](_string_regexp.md) (using a pattern as a dictionary key would be ambiguous).

Accepted key types:

| Family | Types |
|---|---|
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_enum`](_enum.md) |

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
    "ISO_639_3_eng" : "Key data type"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

**[Required properties](_required.md)**

[Mandatory selection](_all.md) ([Minimum element count](_min-items.md): 1; [Maximum element count](_max-items.md): 1)
[String](_string.md) · [Uniform Resource Identifier](_string_URI.md) · [Email address](_string_Email.md) · [Hostname](_string_Hostname.md) · [Internet Protocol version 4 address](_string_IPv4.md) · [Internet Protocol version 6 address](_string_IPv6.md) · [YYYYMMDD date](_string_YMD.md) · [Date](_string_date.md) · [Time](_string_time.md) · [Date and time](_string_date-time.md) · [LaTeX string](_string_LaTeX.md) · [Hexadecimal string](_string_HEX.md) · [Term document key](_term_key.md) · [Enumeration root term document key](_term_key_enum-root.md) · [Enumeration element term document key](_term_key_enum-item.md) · [Descriptor term document key](_term_key_descriptor.md) · [Document handle](_handle.md) · [Enumerated value](_enum.md)

<details>
<summary>JSON</summary>

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

</details>
