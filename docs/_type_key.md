# Key data type
<p style="color: #888; margin-top: -0.5em;"><code>_type_key</code></p>

> The typedef term that defines the set of string-compatible types accepted as the key type in a `_dict_key` object. Excludes number types, boolean, timestamp, text types, and `_string_regexp`, which are not suitable as dictionary keys.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_type` |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_type_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_type",
  "_lid": "key",
  "_gid": "_type_key",
  "_aid": [
    "key"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Key data type"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {
      "_required": [
        {
          "_selectors": [
            {
              "_all": {
                "_min-items": 1,
                "_max-items": 1
              }
            }
          ],
          "_selection": [
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
          ]
        }
      ]
    }
  }
}
```

</details>
