# Namespace
<p><a href="_term_role_descriptor.md" style="background:#EBF8FF;border:1px solid #BEE3F8;border-radius:4px;padding:2px 10px;font-size:0.85em;color:#2C5282;text-decoration:none">Descriptor</a></p>
<p style="color: #888; margin-top: -0.5em;"><code>_nid</code></p>

> The global identifier of the term that defines the namespace of the current term. When present and non-empty, it is prepended to the local identifier to form the global identifier. When absent, the term defines a top-level namespace with no parent.

---

## [Identification section](_code.md)

| Property | Value |
|---|---|
| [Namespace](_nid.md) | (default) |
| [Local identifier](_lid.md) | `nid` |
| [Global identifier](_gid.md) | `_nid` |
| [Official identifiers](_aid.md) | `nid` |

<details>
<summary>JSON</summary>

```json
{
  "_aid" : [
    "nid"
  ],
  "_gid" : "_nid",
  "_lid" : "nid",
  "_nid" : ""
}
```

</details>

---

## [Information section](_info.md)

**[Title](_title.md):** Namespace

**[Definition](_definition.md):** The global identifier of the term that defines the namespace of the current term. When present and non-empty, it is prepended to the local identifier to form the global identifier. When absent, the term defines a top-level namespace with no parent.

**[Description](_description.md)**

Namespaces group and organise [terms](_term.md) under a common category or classification. The value of `_nid` is the [global identifier](_gid.md) of the term that represents the namespace of the current term.

Namespaces also disambiguate [local identifiers](_lid.md): a local identifier must be unique only within its namespace, not across the entire dictionary.

Three distinct cases exist depending on the value of this property:

- **Non-empty string**: the term belongs to the named namespace. The namespace term must itself exist in the dictionary.
- **Empty string** (`""`): the term is a core dictionary building block. The resulting [global identifier](_gid.md) begins with an underscore, marking it as a structural term. This is the only case where `_nid` does not reference an existing term.
- **Absent**: the term defines a top-level namespace with no parent.

Any term's [global identifier](_gid.md) may serve as a namespace for other terms, allowing namespaces to form chains from general to specific — for example `ISO` → `ISO_3166` → `ISO_3166_3`.

**[Examples](_examples.md)**

A term whose namespace is `ISO_3166_3` — the `_nid` must be the [`_gid`](_gid.md) of an existing term:

```json
{
	"_code": {
		"_nid": "ISO_3166_3",
		"_lid": "ITA",
		"_gid": "ISO_3166_3_ITA",
		"_aid": ["ITA"]
	}
}
```

A core dictionary term with an empty-string namespace — `_nid` is `""` and [`_gid`](_gid.md) begins with an underscore:

```json
{
	"_code": {
		"_nid": "",
		"_lid": "code",
		"_gid": "_code",
		"_aid": ["code"]
	}
}
```

A top-level namespace term with `_nid` absent — [`_lid`](_lid.md) and [`_gid`](_gid.md) are equal:

```json
{
	"_code": {
		"_lid": "ISO",
		"_gid": "ISO",
		"_aid": ["ISO"]
	}
}
```

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
    "ISO_639_3_eng" : "Namespace"
  }
}
```

</details>

---

## [Data section](_data.md)

**Shape:** [Scalar](_scalar.md) — [Descriptor term document key](_term_key_descriptor.md)

<details>
<summary>JSON</summary>

```json
{
  "_scalar" : {
    "_term_key_descriptor" : {

    }
  }
}
```

</details>
