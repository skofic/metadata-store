# Dictionary key
<p style="color: #888; margin-top: -0.5em;"><code>_dict_key</code></p>

> The sub-property of a dictionary that defines the type of its keys. Uses the type-as-key convention: the key type is expressed as a property key inside the object. Only string-compatible comparable types are accepted.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Dictionary](_dict.md) |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_dict_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_dict_key",
  "_lid" : "key",
  "_nid" : "_dict"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Dictionary key

**[Definition](_definition.md):** The sub-property of a dictionary that defines the type of its keys. Uses the type-as-key convention: the key type is expressed as a property key inside the object. Only string-compatible comparable types are accepted.

**[Description](_description.md)**

`_dict_key` defines the type of the key side of a dictionary entry. It uses the same type-as-key convention as [`_scalar`](_scalar.md) and [`_set`](_set.md): the key type is expressed as a property key inside the `_dict_key` object, and the value associated with that key is an object of companion properties.

Because dictionary keys must be valid string identifiers, only string-compatible comparable types are accepted. Number types, [`_boolean`](_boolean.md), [`_timestamp`](_timestamp.md), [`_string_regexp`](_string_regexp.md), and all text types are excluded.

Accepted key types:

| Family | Types |
|---|---|
| String | [`_string`](_string.md), [`_string_URI`](_string_URI.md), [`_string_Email`](_string_Email.md), [`_string_Hostname`](_string_Hostname.md), [`_string_IPv4`](_string_IPv4.md), [`_string_IPv6`](_string_IPv6.md), [`_string_YMD`](_string_YMD.md), [`_string_date`](_string_date.md), [`_string_time`](_string_time.md), [`_string_date-time`](_string_date-time.md), [`_string_LaTeX`](_string_LaTeX.md), [`_string_HEX`](_string_HEX.md) |
| Term key | [`_term_key`](_term_key.md), [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md) |
| Other | [`_handle`](_handle.md), [`_enum`](_enum.md) |

`_dict_key` delegates to the [`_type_key`](_type_key.md) typedef, which encodes the full list of accepted key types.

**[Examples](_examples.md)**

ISO 639-3 language codes as dictionary keys:

```json
{
	"_dict_key": {
		"_enum": {
			"_enums": ["ISO_639_3"]
		}
	}
}
```

Plain string keys with no constraint:

```json
{
	"_dict_key": {
		"_string": {}
	}
}
```

Descriptor term keys:

```json
{
	"_dict_key": {
		"_term_key_descriptor": {}
	}
}
```

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
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Dictionary key"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Type definition](_typedef.md): [Key data type](_type_key.md)

<details>
<summary>JSON</summary>

```json
{
  "_typedef" : "_type_key"
}
```

</details>
