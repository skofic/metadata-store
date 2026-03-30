# `_type_string_HTML`

**`_title`**

HTML

**`_definition`**

The scalar data type for HTML-formatted text. The type carries its own format constraint; `_regexp` is not applicable.

**`_description`**

`_type_string_HTML` declares that the value is an [HTML](https://en.wikipedia.org/wiki/HTML) string. No [`_regexp`](_regexp.md) is applicable — the type itself defines the format. Excluded from [`_type_data_comparable`](_type_data_comparable.md) and [`_type_data_dict_key`](_type_data_dict_key.md) because HTML strings do not support meaningful ordering or use as property names.

---

**`_code`**

```json
{
  "_aid" : [
    "HTML"
  ],
  "_gid" : "_type_string_HTML",
  "_lid" : "HTML",
  "_nid" : "_type_string"
}
```
