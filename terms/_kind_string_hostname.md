# `_kind_string_Hostname`

**`_title`**

Hostname

**`_definition`**

An enumeration element indicating that the string value is an Internet hostname. The value must be a valid fully-qualified domain name (FQDN) or a simple hostname, as defined by RFC 1123.

**`_description`**

`_kind_string_Hostname` qualifies a [`_type_string`](_type_string.md) scalar as an Internet hostname. Valid values are fully-qualified domain names such as `example.com` or `api.myservice.org`, conforming to RFC 1123. IP addresses should use [`_kind_string_IPv4`](_kind_string_IPv4.md) or [`_kind_string_IPv6`](_kind_string_IPv6.md) instead.

When this qualifier is present, `_regexp` is not applicable.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_Hostname"
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
  "_gid" : "_kind_string_Hostname",
  "_lid" : "Hostname",
  "_nid" : "_kind_string"
}
```
