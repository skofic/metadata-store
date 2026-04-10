# `_string_Email`

**`_title`**

Email address

**`_definition`**

The scalar data type for email addresses. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_Email` declares that the value is an email address. The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_Email": {}
	}
}
```

Stored values: `"user@example.com"`, `"john.doe+tag@company.org"`.

---

**`_code`**

```json
{
  "_nid": "_string",
  "_lid": "Email",
  "_gid": "_string_Email",
  "_aid": [
    "Email"
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
