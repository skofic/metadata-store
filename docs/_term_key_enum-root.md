# Enumeration root term document key
<p style="color: #888; margin-top: -0.5em;"><code>_term_key_enum-root</code></p>

> A term key that must reference an enumeration root — a term that is the root of a controlled vocabulary graph.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_key` |
| [Local identifier](_lid.md) | `enum-root` |
| [Global identifier](_gid.md) | `_term_key_enum-root` |
| [Official identifiers](_aid.md) | `enum-root` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_key",
  "_lid": "enum-root",
  "_gid": "_term_key_enum-root",
  "_aid": [
    "enum-root"
  ]
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
  "_title": {
    "ISO_639_3_eng": "Enumeration root term document key"
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
