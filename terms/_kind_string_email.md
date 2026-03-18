# `_kind_string_email`

**`_title`**

Email

**`_definition`**

An enumeration element indicating that the string value is an email address. The value must conform to the email address format defined in RFC 5321/5322.

**`_description`**

`_kind_string_email` qualifies a [`_type_string`](_type_string.md) scalar as an email address. Valid values conform to the standard `local-part@domain` format. This qualifier is used for contact, provider, and curator properties where an email address is the expected input.

When this qualifier is present, `_regexp` is not applicable — the format is self-defining.

```json
{
	"_scalar": {
		"_type": "_type_string",
		"_kind_string": "_kind_string_email"
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
  "_gid" : "_kind_string_email",
  "_lid" : "email",
  "_nid" : "_kind_string"
}
```
