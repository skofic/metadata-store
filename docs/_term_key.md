# Term document key
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a> <a href="_term_role_enum-item.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Enumeration option</a> <a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_key</code></p>

> The scalar data type for term document keys. The stored value is the `_gid` of any term in the terms collection, without constraining the term's role. Parent type of the `_term_key_*` sub-types, which add role constraints.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term](_term.md) |
| [Local identifier](_lid.md) | `key` |
| [Global identifier](_gid.md) | `_term_key` |
| [Official identifiers](_aid.md) | `key` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "key"
  ],
  "_gid" : "_term_key",
  "_lid" : "key",
  "_nid" : "_term"
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
  "_definition" : {
    "ISO_639_3_eng" : "..."
  },
  "_description" : {
    "ISO_639_3_eng" : "..."
  },
  "_examples" : {
    "ISO_639_3_eng" : "..."
  },
  "_title" : {
    "ISO_639_3_eng" : "Term document key"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Object](_object.md) — [Closed schema](_closed.md)

<details>
<summary>JSON</summary>

```json
{
  "_object" : {
    "_closed" : {

    }
  }
}
```

</details>
