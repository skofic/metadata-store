# `_string_IPv4`

**`_title`**

Internet Protocol version 4 address

**`_definition`**

The scalar data type for IPv4 addresses in dotted-decimal notation (e.g. `192.168.0.1`). The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_IPv4` declares that the value is an [IPv4 address](https://en.wikipedia.org/wiki/IPv4) in dotted-decimal notation (e.g. `192.168.0.1`). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_IPv4": {}
	}
}
```

Stored values: `"192.168.0.1"`, `"127.0.0.1"`, `"10.0.0.255"`.

---

**`_code`**

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

**`_data`**

```json
{
  "_object": {
    "_closed": {}
  }
}
```
