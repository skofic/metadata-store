# `_string_regexp`

**`_title`**

Regular expression string

**`_definition`**

The scalar data type for regular expression patterns. The stored value is itself a pattern, not a string to be validated against a pattern. A sub-type of `_string`; comparable but not usable as a dictionary key.

**`_description`**

`_string_regexp` declares that the value is a regular expression string. This is distinct from the [`_regexp`](_regexp.md) companion property: [`_regexp`](_regexp.md) holds a *validation pattern* applied to a string value; `_string_regexp` declares that the *stored value itself* is a pattern. No companion properties apply. A sub-type of [`_string`](_string.md). Comparable; may appear in sets but not as dictionary keys.

**`_examples`**

```json
{
	"_scalar": {
		"_string_regexp": {}
	}
}
```

Stored values: `"^[A-Z]{2,3}$"`, `"\d{4}-\d{2}-\d{2}"`, `"^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"`.

---

**`_code`**

```json
{
  "_aid" : [
    "regexp"
  ],
  "_gid" : "_string_regexp",
  "_lid" : "regexp",
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
