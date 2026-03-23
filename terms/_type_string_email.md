# `_type_string_email`

**`_title`**

Email

**`_definition`**

Enumeration element of [`_type_scalar`](_type_scalar.md) for an email address. The value must conform to the email address format defined in RFC 5321/5322.

**`_description`**

When [`_type_scalar`](_type_scalar.md) is `_type_string_email`, the descriptor value is an email address conforming to the standard `local-part@domain` format. This type is used for contact, provider, and curator properties.

No companion properties are applicable.

```json
{
	"_scalar": {
		"_type_scalar": "_type_string_email"
	}
}
```

---

**`_code`**

```json
{
  "_aid" : [
    "email"
  ],
  "_gid" : "_type_string_email",
  "_lid" : "email",
  "_nid" : "_type_string"
}
```
