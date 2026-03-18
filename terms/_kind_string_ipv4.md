# `_kind_string_ipv4`

**`_title`**

IPv4 Address

**`_definition`**

An enumeration element indicating that the string value is an IPv4 address in dotted-decimal notation (e.g. `192.168.1.1`), as defined by RFC 2673.

**`_description`**

`_kind_string_ipv4` qualifies a [`_type_string`](_type_string.md) scalar as an IPv4 address. Valid values are four decimal octets separated by dots, each in the range 0–255, for example `10.0.0.1` or `203.0.113.42`. CIDR notation (`192.168.0.0/24`) is not included unless further constrained by `_regexp`.

For IPv6 addresses, use [`_kind_string_ipv6`](_kind_string_ipv6.md).

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_ipv4"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "ipv4"
  ],
  "_gid" : "_kind_string_ipv4",
  "_lid" : "ipv4",
  "_nid" : "_kind_string"
}
```
