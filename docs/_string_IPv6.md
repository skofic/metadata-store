# Internet Protocol version 6 address
<p><a href="_term_role_data-type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_string_IPv6</code></p>

> The scalar data type for IPv6 addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [String](_string.md) |
| [Local identifier](_lid.md) | `IPv6` |
| [Global identifier](_gid.md) | `_string_IPv6` |
| [Official identifiers](_aid.md) | `IPv6` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "IPv6"
  ],
  "_gid" : "_string_IPv6",
  "_lid" : "IPv6",
  "_nid" : "_string"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Internet Protocol version 6 address

**[Definition](_definition.md):** The scalar data type for IPv6 addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**[Description](_description.md)**

`_string_IPv6` declares that the value is an [IPv6 address](https://en.wikipedia.org/wiki/IPv6). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_IPv6": {}
	}
}
```

Stored values: `"2001:db8::1"`, `"::1"`, `"fe80::1"`.

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
    "ISO_639_3_eng" : "Internet Protocol version 6 address"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
