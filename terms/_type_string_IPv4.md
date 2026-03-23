# `_type_string_IPv4`

**`_title`**

IPv4 Address

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an IPv4 address in dotted-decimal notation (e.g. `192.168.1.1`), as defined by RFC 2673.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_IPv4`, the descriptor value is four decimal octets separated by dots, each in the range 0–255. Examples: `10.0.0.1`, `203.0.113.42`. CIDR notation (`192.168.0.0/24`) is not included. For IPv6 addresses, use [`_type_string_IPv6`](_type_string_IPv6.md).

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_IPv4"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "IPv4"
  ],
  "_gid" : "_type_string_IPv4",
  "_lid" : "IPv4",
  "_nid" : "_type_string"
}
```
