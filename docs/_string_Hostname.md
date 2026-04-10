# `_string_Hostname`

**`_title`**

Hostname

**`_definition`**

The scalar data type for internet hostnames. The type carries its own format constraint; no companion properties are applicable. A sub-type of `_string`.

**`_description`**

`_string_Hostname` declares that the value is an [internet hostname](https://en.wikipedia.org/wiki/Hostname). The type itself defines the format; no companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets and as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_Hostname": {}
	}
}
```

Stored values: `"www.example.com"`, `"localhost"`, `"mail.server.org"`.

---

**`_code`**

```json
{
  "_aid" : [
    "Hostname"
  ],
  "_gid" : "_string_Hostname",
  "_lid" : "Hostname",
  "_nid" : "_string"
}
```

**`_data`**

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```
