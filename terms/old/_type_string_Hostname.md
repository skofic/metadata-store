# `_type_string_Hostname`

**`_title`**

Hostname

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an Internet hostname. The value must be a valid fully-qualified domain name (FQDN) or a simple hostname, as defined by RFC 1123.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_Hostname`, the descriptor value is a fully-qualified domain name such as `example.com` or `api.myservice.org`, conforming to RFC 1123. IP addresses should use [`_type_string_IPv4`](_type_string_IPv4.md) or [`_type_string_IPv6`](_type_string_IPv6.md) instead.

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_Hostname"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "Hostname"
  ],
  "_gid" : "_type_string_Hostname",
  "_lid" : "Hostname",
  "_nid" : "_type_string"
}
```
