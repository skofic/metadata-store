# Term document key
<p style="color: #888; margin-top: -0.5em;"><code>_term_key</code></p>

> The scalar data type for term document keys. The stored value is the `_gid` of any term in the terms collection, without constraining the term's role. Parent type of the `_term_key_*` sub-types, which add role constraints.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term` |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_term_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term",
  "_lid": "key",
  "_gid": "_term_key",
  "_aid": [
    "key"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Term document key

**[Definition](_definition.md):** The scalar data type for term document keys. The stored value is the `_gid` of any term in the terms collection, without constraining the term's role. Parent type of the `_term_key_*` sub-types, which add role constraints.

**[Description](_description.md)**

`_term_key` declares that the value is the [`_gid`](_gid.md) of a term document. As a parent type, it is the root of [`_term_key_enum-root`](_term_key_enum-root.md), [`_term_key_enum-item`](_term_key_enum-item.md), [`_term_key_descriptor`](_term_key_descriptor.md), which further constrain the referenced term's role. When none of the sub-types is specific enough, `_term_key` accepts any term regardless of role. No companion properties apply. Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_term_key": {}
	}
}
```

Stored values: `"_string_date"`, `"ISO_639_3_eng"`, `"_predicate_enum-of"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Term document key"
  },
  "_definition": {
    "ISO_639_3_eng": "..."
  },
  "_description": {
    "ISO_639_3_eng": "..."
  },
  "_examples": {
    "ISO_639_3_eng": "..."
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md)

<details>
<summary>JSON</summary>

```json
{
  "_object": {
    "_closed": {}
  }
}
```

</details>
