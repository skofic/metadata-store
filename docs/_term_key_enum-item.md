# Enumeration element term document key
<p style="color: #888; margin-top: -0.5em;"><code>_term_key_enum-item</code></p>

> A term key that must reference a valid enumeration element — a term reachable from an enumeration root via `_predicate_enum-of` edges.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_key` |
| [Local identifier](_lid.md) | `enum-item` |
| [Global identifier](_gid.md) | `_term_key_enum-item` |
| [Official identifiers](_aid.md) | `enum-item` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_key",
  "_lid": "enum-item",
  "_gid": "_term_key_enum-item",
  "_aid": [
    "enum-item"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Enumeration element term document key

**[Definition](_definition.md):** A term key that must reference a valid enumeration element — a term reachable from an enumeration root via `_predicate_enum-of` edges.

**[Description](_description.md)**

`_term_key_enum-item` is used when a property value must be the `_gid` of an enumeration element term. The referenced term must be reachable (directly or through sections or bridges) from at least one enumeration root. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_term_key_enum-item": {}
	}
}
```

Stored values: `"ISO_639_3_eng"`, `"ISO_3166_3_ITA"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Enumeration element term document key"
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
