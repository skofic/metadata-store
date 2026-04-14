# Descriptor term document key
<p style="color: #888; margin-top: -0.5em;"><code>_term_key_descriptor</code></p>

> A term key that must reference a descriptor — a term carrying a `_data` section.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | `_term_key` |
| [Local identifier](_lid.md) | `descriptor` |
| [Global identifier](_gid.md) | `_term_key_descriptor` |
| [Official identifiers](_aid.md) | `descriptor` |

<details>
<summary>JSON</summary>

```json
{
  "_nid": "_term_key",
  "_lid": "descriptor",
  "_gid": "_term_key_descriptor",
  "_aid": [
    "descriptor"
  ]
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Descriptor term document key

**[Definition](_definition.md):** A term key that must reference a descriptor — a term carrying a `_data` section.

**[Description](_description.md)**

`_term_key_descriptor` is used when a property value must be the `_gid` of a descriptor term. A descriptor is any term that carries a [`_data`](_data.md) section. A sub-type of [`_term_key`](_term_key.md). Comparable; may appear in sets and as dictionary keys.

**[Examples](_examples.md)**

```json
{
	"_scalar": {
		"_term_key_descriptor": {}
	}
}
```

Stored values: `"_string_date"`, `"_number_float"`, `"_enum"`.

<details>
<summary>JSON</summary>

```json
{
  "_title": {
    "ISO_639_3_eng": "Descriptor term document key"
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
