# Descriptor term document key
<p><a href="_term_role_type.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Data type</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_term_key_descriptor</code></p>

> A term key that must reference a descriptor — a term carrying a `_data` section.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | [Term document key](_term_key.md) |
| [Local identifier](_lid.md) | `descriptor` |
| [Global identifier](_gid.md) | `_term_key_descriptor` |
| [Official identifiers](_aid.md) | `descriptor` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "descriptor"
  ],
  "_gid" : "_term_key_descriptor",
  "_lid" : "descriptor",
  "_nid" : "_term_key"
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
    "ISO_639_3_eng" : "Descriptor term document key"
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
