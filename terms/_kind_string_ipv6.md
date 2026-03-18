# `_kind_string_ipv6`

**`_title`**

IPv6 Address

**`_definition`**

An enumeration element indicating that the string value is an IPv6 address in the colon-separated hexadecimal notation defined by RFC 4291, optionally using the `::` abbreviation for consecutive zero groups.

**`_description`**

`_kind_string_ipv6` qualifies a [`_type_string`](_type_string.md) scalar as an IPv6 address. Valid values use the standard colon-separated hexadecimal notation, such as `2001:0db8:85a3:0000:0000:8a2e:0370:7334` or its abbreviated form `2001:db8:85a3::8a2e:370:7334`. The `::` shorthand may be used once per address to replace one or more consecutive groups of zeroes.

For IPv4 addresses, use [`_kind_string_ipv4`](_kind_string_ipv4.md).

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_ipv6"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "ipv6"
  ],
  "_gid" : "_kind_string_ipv6",
  "_lid" : "ipv6",
  "_nid" : "_kind_string"
}
```
