# `_key`

**`_title`**

Document key

**`_definition`**

The ArangoDB system property that uniquely identifies a document within its collection. May be user-specified at insertion time or generated automatically by ArangoDB. Immutable once set.

**`_description`**

`_key` is a built-in ArangoDB property that uniquely identifies a document within its collection. It forms the second part of the document handle ([`_id`](_id.md)), which has the format `<collection>/<key>`.

When specifying a key, the value must conform to these rules:

- It must be a **string**. Numeric keys are not allowed, but a number can be stored as a string and used as a key.
- It must be between **1 and 254 bytes** long. Empty keys are not allowed.
- It must consist only of the letters `A`–`Z` (upper- and lowercase), the digits `0`–`9`, or the punctuation characters: `_` `-` `.` `@` `(` `)` `+` `,` `=` `;` `$` `!` `*` `'` `%` `:`
- The `:` character should be avoided in practice, as it conflicts with the key format used by EnterpriseGraphs, SmartGraphs, and SmartJoins.
- No other characters are permitted — in particular, multi-byte UTF-8 sequences, whitespace, and any punctuation not listed above are disallowed.
- It must be **unique** within its collection.

If `_key` is omitted when inserting a document, ArangoDB generates a unique key automatically. When working with named graphs, graph names are used as `_key` values in the `_graphs` system collection and are subject to the same restrictions.

---

**`_code`**

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_key",
  "_lid" : "key",
  "_nid" : ""
}
```

**`_data`**

```json
{
  "_scalar" : {
    "_string_key" : {

    }
  }
}
```
