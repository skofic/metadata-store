# Internet Protocol version 4 address
<p style="color: #888; margin-top: -0.5em;"><code>_string_IPv4</code></p>

> The scalar data type for IPv4 addresses in dotted-decimal notation (e.g. `192.168.0.1`). The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_string` |
| [Local identifier](_lid.md) | `IPv4` |
| [Global identifier](_gid.md) | `_string_IPv4` |
| [Official identifiers](_aid.md) | `IPv4` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_string",
  "_lid": "IPv4",
  "_gid": "_string_IPv4",
  "_aid": [
    "IPv4"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Internet Protocol version 4 address

**[Definition](_definition.md):** The scalar data type for IPv4 addresses in dotted-decimal notation (e.g. `192.168.0.1`). The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**[Description](_description.md)**

`_string_IPv4` declares that the value is an [IPv4 address](https://en.wikipedia.org/wiki/IPv4) in dotted-decimal notation (e.g. `192.168.0.1`). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_string_IPv4": {}
	}
}
```

Stored values: `"192.168.0.1"`, `"127.0.0.1"`, `"10.0.0.255"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Internet Protocol version 4 address"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
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
    "_closed": {}
  }
}
```

</details>
