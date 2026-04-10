# `_string_IPv6`

**`_title`**

Internet Protocol version 6 address

**`_definition`**

The scalar data type for IPv6 addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_IPv6` declares that the value is an [IPv6 address](https://en.wikipedia.org/wiki/IPv6). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_IPv6": {}
	}
}
```

Stored values: `"2001:db8::1"`, `"::1"`, `"fe80::1"`.

---

**`_code`**

```json
{
  "_nid": "_string",
  "_lid": "IPv6",
  "_gid": "_string_IPv6",
  "_aid": [
    "IPv6"
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
