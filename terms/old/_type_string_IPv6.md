# `_type_string_IPv6`

**`_title`**

IPv6 Address

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an IPv6 address in the colon-separated hexadecimal notation defined by RFC 4291, optionally using the `::` abbreviation for consecutive zero groups.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_IPv6`, the descriptor value is an IPv6 address in standard colon-separated hexadecimal notation, such as `2001:0db8:85a3::8a2e:0370:7334`. The `::` shorthand may be used once per address to replace consecutive groups of zeroes. For IPv4 addresses, use [`_type_string_IPv4`](_type_string_IPv4.md).

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_IPv6"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "IPv6"
  ],
  "_gid" : "_type_string_IPv6",
  "_lid" : "IPv6",
  "_nid" : "_type_string"
}
```
