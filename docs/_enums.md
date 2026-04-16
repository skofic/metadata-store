# Controlled vocabularies
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_enums</code></p>

> The companion property of `_enum` that constrains the value to elements of one or more specified controlled vocabularies. Its value is a set of enumeration root `_gid`s; each must identify a term that is the root of a controlled vocabulary graph.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `enums` |
| [Global identifier](_gid.md) | `_enums` |
| [Official identifiers](_aid.md) | `enums` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "enums"
  ],
  "_gid" : "_enums",
  "_lid" : "enums",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Controlled vocabularies

**[Definition](_definition.md):** The companion property of `_enum` that constrains the value to elements of one or more specified controlled vocabularies. Its value is a set of enumeration root `_gid`s; each must identify a term that is the root of a controlled vocabulary graph.

**[Description](_description.md)**

`_enums` is an optional companion property of [`_enum`](_enum.md). When present, the `_enum` value must be the [`_gid`](_gid.md) of an element that belongs to at least one of the listed enumeration roots. When absent, any enumeration element from any controlled vocabulary is accepted.

Each element in `_enums` must be the `_gid` of an enumeration root term. The data type of `_enums` itself is a set of [`_term_key_enum-root`](_term_key_enum-root.md) values.

**[Examples](_examples.md)**

Restricting an [`_enum`](_enum.md) value to ISO 639-3 or ISO 639-1 language codes:

```json
{
	"_scalar": {
		"_enum": {
			"_enums": ["ISO_639_3", "ISO_639_1"]
		}
	}
}
```

Stored values: `["ISO_639_3"]` (single vocabulary), `["ISO_639_3", "ISO_639_1"]` (two vocabularies), `["ISO_3166_3"]` (country codes only).

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
    "ISO_639_3_eng" : "Controlled vocabularies"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Set](_set.md) — [Enumeration root term document key](_term_key_enum-root.md)

<details>
<summary>JSON</summary>

```json
{
  "_set" : {
    "_term_key_enum-root" : {

    }
  }
}
```

</details>
