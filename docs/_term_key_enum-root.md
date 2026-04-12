# Enumeration root term document key
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_key_enum-root</code></p>

> A term key that must reference an enumeration root — a term that is the root of a controlled vocabulary graph.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term document key](_term_key.md) |
| [Local identifier](_lid.md) | `enum-root` |
| [Global identifier](_gid.md) | `_term_key_enum-root` |
| [Official identifiers](_aid.md) | `enum-root` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "enum-root"
  ],
  "_gid" : "_term_key_enum-root",
  "_lid" : "enum-root",
  "_nid" : "_term_key"
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration root term document key

**[Definition](_definition.md):** A term key that must reference an enumeration root — a term that is the root of a controlled vocabulary graph.

**[Description](_description.md)**

`_term_key_enum-root` is used when a property value must be the `_gid` of an enumeration root term. Typical use: the [`_enums`](_enums.md) companion property, which holds a set of vocabulary root keys that constrain an [`_enum`](_enum.md) value. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_term_key_enum-root": {}
	}
}
```

Stored values: `"ISO_639_3"`, `"ISO_3166_3"`.

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
    "ISO_639_3_eng" : "Enumeration root term document key"
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
