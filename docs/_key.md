# Document key
<p style="color: #888; margin-top: -0.5em;"><code>_key</code></p>

> The ArangoDB system property that uniquely identifies a document within its collection. May be user-specified at insertion time or generated automatically by ArangoDB. Immutable once set.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "",
  "_lid": "key",
  "_gid": "_key",
  "_aid": [
    "key"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Document key

**[Definition](_definition.md):** The ArangoDB system property that uniquely identifies a document within its collection. May be user-specified at insertion time or generated automatically by ArangoDB. Immutable once set.

**[Description](_description.md)**

`_key` is a built-in ArangoDB property that uniquely identifies a document within its collection. It forms the second part of the document handle ([`_id`](_id.md)), which has the format `<collection>/<key>`.

When specifying a key, the value must conform to these rules:

- It must be a **string**. Numeric keys are not allowed, but a number can be stored as a string and used as a key.
- It must be between **1 and 254 bytes** long. Empty keys are not allowed.
- It must consist only of the letters `A`–`Z` (upper- and lowercase), the digits `0`–`9`, or the punctuation characters: `_` `-` `.` `@` `(` `)` `+` `,` `=` `;` `$` `!` `*` `'` `%` `:`
- The `:` character should be avoided in practice, as it conflicts with the key format used by EnterpriseGraphs, SmartGraphs, and SmartJoins.
- No other characters are permitted — in particular, multi-byte UTF-8 sequences, whitespace, and any punctuation not listed above are disallowed.
- It must be **unique** within its collection.

If `_key` is omitted when inserting a document, ArangoDB generates a unique key automatically. When working with named graphs, graph names are used as `_key` values in the `_graphs` system collection and are subject to the same restrictions.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Document key"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [_string_key](_string_key.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar": {
    "_string_key": {}
  }
}
```

</details>
